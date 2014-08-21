module.exports = (current, min, max) ->
  return null if current == ""

  unless isFinite(current)
    return "`#{current}' is not a number"

  value = parseInt(current, 10)

  unless min <= value <= max
    return "`#{current}' must be at least '#{min}` and at most `#{max}' at this version."

  null
