previousConstants = require('data/php52').constants
newCurrentConstants =
  "E_DEPRECATED":
    value: 8192,
    description: "Run-time notices. Enable this to receive warnings about code that will not work in future versions.",
    note: "Since PHP 5.3.0"

  "E_USER_DEPRECATED":
    value: 16384,
    description: "User-generated warning message. This is like an E_DEPRECATED, except it is generated in PHP code by using the PHP function trigger_error().",
    note: "Since PHP 5.3.0"

merge = require('helper/hash_merge')

module.exports =
  constants: merge(previousConstants, newCurrentConstants)
  max: 32767
  eAllValue: 30719
