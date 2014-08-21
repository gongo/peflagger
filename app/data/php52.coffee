previousConstants = require('data/php50').constants
newCurrentConstants =
  "E_RECOVERABLE_ERROR":
    value: 4096,
    description: "Catchable fatal error. It indicates that a probably dangerous error occurred, but did not leave the Engine in an unstable state. If the error is not caught by a user defined handle (see also set_error_handler()), the application aborts as it was an E_ERROR.",
    note: "Since PHP 5.2.0"

merge = require('helper/hash_merge')

module.exports =
  constants: merge(previousConstants, newCurrentConstants)
  max: 8191
  eAllValue: 6143
