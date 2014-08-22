previousConstants = require('data/php50').constants
newCurrentConstants =
  E_RECOVERABLE_ERROR: 4096

merge = require('helper/hash_merge')

module.exports =
  constants: merge(previousConstants, newCurrentConstants)
  max: 8191
  eAllValue: 6143
