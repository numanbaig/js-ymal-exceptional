'use strict';


var assert = require('assert');
var yaml = require('../../');
var readFileSync = require('fs').readFileSync;


it('should convert new line into white space', function () {
  var data = yaml.load(readFileSync(require('path').join(__dirname, '/0026.yml'), 'utf8'));

  assert.strictEqual(data.test, 'a b c\n');
});
