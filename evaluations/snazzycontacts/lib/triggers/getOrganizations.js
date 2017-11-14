"use strict";
const request = require('request-promise');
const messages = require('elasticio-node').messages;

const snazzy = require('../actions/snazzy.js');

exports.process = processTrigger;

function processTrigger(msg, cfg) {

  let organizations = [];
  let self = this;

  snazzy.createSession(cfg, () => {

    let apiKey = cfg.apikey;
    let cookie = cfg.mp_cookie;
    let uri = `https://snazzycontacts.com/mp_contact/json_respond/address_company/json_mainview?mp_cookie=${cookie}`;

    let requestOptions = {
      json: {
        max_hits: 100,
        print_address_data_only: 1
      },
      headers: {
        'X-API-KEY': apiKey
      }
    };

    request.post(uri, requestOptions)
      .then((res) => {
        organizations = res.content;
        emitData();
      }, (err) => {
        emitError();
      });

    // request.post(uri, requestOptions, (error, response, body) => {
    //   if (!error && response.statusCode === 200) {
    //     organizations = body.content;
    //     emitData();
    //   } else {
    //     emitError();
    //   }
    // });

  });

  function emitData() {

    let data = messages.newMessageWithBody({
      "organizations": organizations
    });
    console.log('Emitting data: ' + JSON.stringify(data, undefined, 2));
    self.emit('data', data);
  }

  function emitError(e) {
    console.log(`ERROR: ${e}`);
    self.emit('error', e);
  }
}
