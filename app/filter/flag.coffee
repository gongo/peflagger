isEqualFlag = (target, value) ->
  (target & value) == value

module.exports = (errorFlags, filterValueKey) ->
  filterValue = @[filterValueKey]
  views = []

  for key, constant of errorFlags.constants
    constant.name = key
    views.push(constant) if isEqualFlag(filterValue, constant.value)

  views.sort (a, b) ->
    a.value - b.value
