/**
 * Copyright 2018 Wice GmbH

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
*/

"use strict";
const Q = require('q');
const request = require('request-promise');
const messages = require('elasticio-node').messages;

const snazzy = require('../actions/snazzy.js');

exports.process = processTrigger;

function processTrigger(msg, cfg) {

  let organizations = [];
  const self = this;

  snazzy.createSession(cfg, () => {

    function getOrganizations() {

      return new Promise((resolve, reject) => {
        const requestOptions = {
          uri: `https://snazzycontacts.com/mp_contact/json_respond/address_company/json_mainview?mp_cookie=${cfg.mp_cookie}`,
          json: true,
          // {
          //   max_hits: 100,
          //   print_address_data_only: 1
          // },
          headers: {
            'X-API-KEY': cfg.apikey
          }
        };

        request.get(requestOptions)
          .then((res) => {
            organizations = res.content;
            // TODO: Create a custom object which does not contain all fields
            // TODO: Add error handling if the object is empty
            resolve(organizations)
          }).catch((e) => {
            reject(e);
          });
      });
    }

    function emitData() {
      const data = messages.newMessageWithBody({
        "organizations": organizations
      });
      self.emit('data', data);
    }

    function emitError(e) {
      console.log(`ERROR: ${e}`);
      self.emit('error', e);
    }

    function emitEnd() {
      console.log('Finished execution');
      self.emit('end');
    }

    Q()
      .then(getOrganizations)
      .then(emitData)
      .fail(emitError)
      .done(emitEnd);

  });
}
