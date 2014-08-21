# https://github.com/jashkenas/coffeescript/blob/master/src/helpers.coffee
module.exports = (object, properties) ->
  for key, val of properties
    object[key] = val
  object
