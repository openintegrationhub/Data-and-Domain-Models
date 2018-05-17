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
  body.number = 'auto';

  // First create a session in Wice
  wice.createSession(cfg, () => {
    if (cfg.cookie) {

      let article = JSON.stringify(body);
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

      checkForExistingArticle().then(() => {
        if (existingRowid == 0) {
          console.log('Creating an article ...');
          requestToWice('insert_article', article);

        } else {
          body.rowid = existingRowid;
          requestToWice('update_article', article);
        }
      });

      // Check it the article alredy exists
      function checkForExistingArticle() {

        options.form = {
          method: 'get_all_articles',
          cookie: cfg.cookie,
          search_filter: body.description
        };

        return new Promise((resolve, reject) => {
          request.post(options)
            .then((res) => {
              let resObj = JSON.parse(res);
              if (resObj.loop_articles) {
                existingRowid = resObj.loop_articles[0].rowid;
                console.log(`Article alredy exists ... ROWID: ${existingRowid}`);
              }
              resolve(true);
            })
            .catch((err) => {
              reject(err);
            });
        });
      };

      // Send a request to Wice
      function requestToWice(method, article) {
        options.form = {
          method,
          cookie: cfg.cookie,
          data: article
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