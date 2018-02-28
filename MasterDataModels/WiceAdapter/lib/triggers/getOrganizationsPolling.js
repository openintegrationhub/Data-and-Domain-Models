"use strict";
const request = require('request-promise');
const messages = require('elasticio-node').messages;

const wice = require('./../actions/wice');

exports.process = processTrigger;

/**
 *  This method will be called from elastic.io platform providing following data
 *
 * @param msg
 * @param cfg
 */
function processTrigger(msg, cfg) {

  let organizations = [];
  let self = this;

  // Create a session in wice and then make a request to get all organizations saved by a specific user
  wice.createSession(cfg, () => {

      let uri = `https://oihwice.wice-net.de/plugin/wp_elasticio_backend/json?method=get_all_companies&cookie=${cfg.cookie}`;
      let requestOptions = {
        uri,
        headers: {
          'X-API-KEY': cfg.apikey
        }
      };
      // Make a request to get all organizations  
      request.get(requestOptions).then((res) => {

        let resObj = JSON.parse(res);
        organizations = resObj.loop_addresses;
        emitData();
        // console.log(`ORGANIZATIONS LENGTH:${resObj.loop_addresses.length}`);
        // console.log(JSON.stringify(resObj.loop_addresses, undefined, 2));

      }, (err) => {
        emitError();
      }).catch((e) => {
        console.log(`ERROR: ${e}`);
      });

  });

  // Emit data from promise depending on the result
  function emitData() {
    let data = messages.newMessageWithBody({
      "organizations": organizations
    });
    console.log('Emit data: '+ JSON.stringify(data, undefined, 2));
    self.emit('data', data);
  }

  function emitError(e) {
    console.log(`ERROR: ${e}`);

    self.emit('error', e);
  }
}
