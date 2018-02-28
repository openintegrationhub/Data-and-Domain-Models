"use strict";
const request = require('request-promise');
const messages = require('elasticio-node').messages;

const wice = require('./../actions/wice.js');

exports.process = processTrigger;

/**
 *  This method will be called from elastic.io platform providing following data
 *
 * @param msg
 * @param cfg
 */
function processTrigger(msg, cfg) {

  let organization = [];
  let self = this;
  let rowid = msg.body.rowid;

  // Create a session in wice and then make a request to get a person by rowid

  wice.createSession(cfg, () => {
      let uri = `https://oihwice.wice-net.de/plugin/wp_elasticio_backend/json?method=get_company&cookie=${cfg.cookie}&pkey=${rowid}`;
      let requestOptions = {
        uri,
        headers: {
          'X-API-KEY': cfg.apikey
        }
      };

      // Make a request to get an organization
      request.get(requestOptions).then((res) => {

        let resObj = JSON.parse(res);

        organization = {
          rowid: resObj.rowid,
          name: resObj.name,
          street: resObj.street,
          street_number: resObj.streetbumber,
          town: resObj.town,
          country: resObj.country,
        };

        emitData();

      }, (err) => {
        emitError();
      }).catch((e) => {
        console.log(`ERROR: ${e}`);
      });

  });

  // Emit data from promise depending on the result
  function emitData() {
    let data = messages.newMessageWithBody({
      "organization": organization
    });
    console.log('Emit data: '+ JSON.stringify(data, undefined, 2));
    self.emit('data', data);
  }

  function emitError(e) {
    console.log(`ERROR: ${e}`);

    self.emit('error', e);
  }
}
