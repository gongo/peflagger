previousConstants = require('data/php4x').constants
newCurrentConstants =
  E_STRICT: 2048

merge = require('helper/hash_merge')

module.exports =
  constants: merge(previousConstants, newCurrentConstants)
  max: 4095
  eAllValue: 2047

