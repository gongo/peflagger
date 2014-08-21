# https://github.com/jashkenas/coffeescript/blob/master/src/helpers.coffee
extend = (object, properties) ->
  for key, val of properties
    object[key] = val
  object

module.exports = (original, overrides) ->
  extend (extend {}, original), overrides
