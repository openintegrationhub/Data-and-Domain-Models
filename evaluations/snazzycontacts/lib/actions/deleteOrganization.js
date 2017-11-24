"use strict";
const request = require('request-promise');
const messages = require('elasticio-node').messages;

const snazzy = require('./snazzy.js');

exports.process = processAction;

function processAction(msg, cfg) {

  let reply = {};
  let self = this;
  let body = msg.body;
  body.is_deleted = 1;

  snazzy.createSession(cfg, () => {
    if (cfg.mp_cookie) {

      let apiKey = cfg.apikey;
      let cookie = cfg.mp_cookie;
      let uri = `https://snazzycontacts.com/mp_contact/json_respond/address_company/json_update?mp_cookie=${cookie}`;

      let requestOptions = {
        json: body,
        headers: {
          'X-API-KEY': apiKey
        }
      };

      request.post(uri, requestOptions)
        .then((res) => {
          reply = res;
          emitData();
          console.log('Organization has been deleted.');
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
