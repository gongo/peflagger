isEqualFlag = (target, value) ->
  (target & value) == value

module.exports = (errorFlags, filterValueKey, dictionaryKey) ->
  filterValue = @[filterValueKey]
  dictionary = @[dictionaryKey]
  views = []

  for key, value of errorFlags.constants
    continue unless isEqualFlag(filterValue, value)
    constant =
      name: key
      value: value
      description: dictionary[key].description
      note: dictionary[key].note
    views.push(constant)

  views.sort (a, b) ->
    a.value - b.value
