"use strict";
const request = require('request-promise');
const messages = require('elasticio-node').messages;

const snazzy = require('./snazzy.js');

exports.process = processAction;

function processAction(msg, cfg) {

  let reply = {};
  let self = this;

  snazzy.createSession(cfg, () => {
    if (cfg.mp_cookie) {

      let apiKey = cfg.apikey;
      let cookie = cfg.mp_cookie;
      let uri = `https://snazzycontacts.com/mp_contact/json_respond/address_contactperson/json_update?mp_cookie=${cookie}`;

      let requestOptions = {
        json: msg.body,
        headers: {
          'X-API-KEY': apiKey
        }
      };

      // request.post(uri, requestOptions, (error, response, body) => {
      //   if (!error && response.statusCode == 200) {
      //     reply = body;
      //     // console.log(JSON.stringify(reply, undefined, 2));
      //     emitData();
      //   }
      // });

      request.post(uri, requestOptions)
        .then((res) => {
          reply = res.content;
          emitData();
        }, (err) => {
          emitError();
        });
    }
  });

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
