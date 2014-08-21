previousConstants = require('data/php4x').constants
newCurrentConstants =
  "E_STRICT":
    value: 2048,
    description: "Enable to have PHP suggest changes to your code which will ensure the best interoperability and forward compatibility of your code.",
    note: "Since PHP 5 but not included in E_ALL until PHP 5.4.0"

merge = require('helper/hash_merge')

module.exports =
  constants: merge(previousConstants, newCurrentConstants)
  max: 4095
  eAllValue: 2047

