"use strict";
const request = require('request-promise');
const messages = require('elasticio-node').messages;

const wice = require('./wice.js');

exports.process = processAction;

/**
 *  This method will be called from elastic.io platform providing following data
 *
 * @param msg
 * @param cfg
 */
function processAction(msg, cfg) {

  let reply = {};
  let self = this;
  let body = msg.body;
  body.same_contactperson = 'auto';

  // First create a session in Wice
  wice.createSession(cfg, () => {
    if (cfg.cookie) {

      let person = JSON.stringify(body);
      let existingRowid = 0;

      let options = {
        method: 'POST',
        uri: 'https://oihwice.wice-net.de/plugin/wp_elasticio_backend/json',
        form: {
          method: '',
          cookie: '',
          data: '',
        },
        headers: {
          'X-API-KEY': cfg.apikey
        }
      };

      checkForExistingUser().then(() => {
        if (existingRowid == 0) {
          console.log('Creating a person ...');
          requestToWice('insert_contact', person);

        } else {
          msg.body.rowid = existingRowid;
          requestToWice('update_contact', person);
        }
      });

      // Check it the person alredy exists
      function checkForExistingUser() {

        options.form = {
          method: 'get_all_persons',
          cookie: cfg.cookie,
          ext_search_do: 1,
          name: msg.body.name // Best practice is to use email but at this point of time the email is not accesible

        };

        return new Promise((resolve, reject) => {
          request.post(options).then((res) => {
            let resObj = JSON.parse(res);

            if (resObj.loop_addresses) {
              existingRowid = resObj.loop_addresses[0].rowid;
              console.log(`Person alredy exists ... ROWID: ${existingRowid}`);
            }
            resolve(true);
          }).catch((e) => {
            reject(e);
          })
        });
      };

      // Send a request to Wice
      function requestToWice(method, user) {

        options.form = {
          method,
          cookie: cfg.cookie,
          data: user
        };

        request.post(options).then((res) => {
          reply = res;
          emitData();
        }).catch((e) => {
          emitError();
          console.log(`ERROR: ${e}`);
        });
      };
    }
  });

  // Emit data from promise depending on the result
  function emitData() {
    let data = messages.newMessageWithBody(reply);
    self.emit('data', data);
    console.log(JSON.stringify(data, undefined, 2));
  }

  function emitError(e) {
    console.log('Oops! Error occurred');
    self.emit('error', e);
  }
}
