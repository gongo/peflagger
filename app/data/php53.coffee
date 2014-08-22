previousConstants = require('data/php52').constants
newCurrentConstants =
  E_DEPRECATED:       8192
  E_USER_DEPRECATED: 16384

merge = require('helper/hash_merge')

module.exports =
  constants: merge(previousConstants, newCurrentConstants)
  max: 32767
  eAllValue: 30719
