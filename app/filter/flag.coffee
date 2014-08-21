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

  if isEqualFlag(filterValue, errorFlags.eAllValue)
    views.unshift({ name: "E_ALL", value: errorFlags.eAllValue, description: "All errors and warnings, as supported, except of level E_STRICT prior to PHP 5.4.0.", note: "32767 in PHP 5.4.x, 30719 in PHP 5.3.x, 6143 in PHP 5.2.x, 2047 previously" })

  views
