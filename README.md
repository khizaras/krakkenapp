# krakapp

krakk app

<h3>Basic Setup</h3>

'use strict';

var http = require('http');
var express = require('express');
var kraken = require('kraken-js');
var mysql = require('mysql');
var myConnection = require('express-myconnection');
var options, app, server;
var cookieParser = require('cookie-parser');
/*
    http://expressjs.com/api.html#res.cookie
 * Create and configure application. Also exports application instance for use by tests.
 * See https://github.com/krakenjs/kraken-js#options for additional configuration options.
 */
options = {
    onconfig: function (config, next) {
        /*
         * Add any additional config setup or overrides here. `config` is an initialized
         * `confit` (https://github.com/krakenjs/confit/) configuration object.
         */
        next(null, config);
    }
};

app = module.exports = express();
app.use(kraken(options));
app.on('start', function () {
    console.log('Application ready to serve requests.');
    console.log('Environment: %s', app.kraken.get('env:env'));
});
app.use(cookieParser());
app.use(myConnection(mysql, {
    host:'localhost',
    user:'root',
    password:'',
    port:3306,
    database:'savi'
}, 'single'));

/*
 * Create and start HTTP server.
 */
if (!module.parent) {

    /*
     * This is only done when this module is run directly, e.g. `node .` to allow for the
     * application to be used in tests without binding to a port or file descriptor.
     */
    server = http.createServer(app);
    server.listen(process.env.PORT || 8000);
    server.on('listening', function () {
        console.log('Server listening on http://localhost:%d', this.address().port);
    });

}
