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

  // Create a session in Wice
  wice.createSession(cfg, () => {
    if (cfg.cookie) {

      let person = JSON.stringify(body);

      let options = {
        method: 'POST',
        uri: 'https://oihwice.wice-net.de/plugin/wp_elasticio_backend/json',
        form: {
          method: 'delete_person',
          cookie: cfg.cookie,
          data: person
        },
        headers: {
          'X-API-KEY': cfg.apikey
        }
      };

      // Send a request to delete the person
      request.post(options).then((res) => {
        reply = res;
        emitData();
      }, (err) => {
        console.log(`ERROR: ${err}`);
      }).catch((e) => {
        emitError();
        console.log(`ERROR: ${e}`);
      });
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