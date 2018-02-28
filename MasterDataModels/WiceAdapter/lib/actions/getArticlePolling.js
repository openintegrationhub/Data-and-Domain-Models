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

  let article = [];
  let self = this;
  let rowid = msg.body.rowid;

  // Create a session in wice and then make a request to get a person by rowid

  wice.createSession(cfg, () => {
    let uri = `https://oihwice.wice-net.de/plugin/wp_elasticio_backend/json?method=get_article&cookie=${cfg.cookie}&show_detailview=${rowid}`;
    let requestOptions = {
      uri,
      headers: {
        'X-API-KEY': cfg.apikey
      }
    };

    // Make a request to get a person
    request.get(requestOptions).then((res) => {

      let resObj = JSON.parse(res);

      article = {
        rowid: resObj.rowid,
        description: resObj.description,
        sales_price: resObj.sales_price,
        purchase_price: resObj.purchase_price,
        in_stock: resObj.in_stock,
        unit: resObj.unit,
        price_list_highlight: resObj.price_list_highlight,
        currency: resObj.currency
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
      "article": article
    });
    console.log('Emit data: ' + JSON.stringify(data, undefined, 2));
    self.emit('data', data);
  }

  function emitError(e) {
    console.log(`ERROR: ${e}`);

    self.emit('error', e);
  }
}
