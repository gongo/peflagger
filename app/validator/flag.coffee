module.exports = (current, min, max) ->
  return null if current == ""

  unless isFinite(current)
    return "Must be a number"

  value = parseInt(current, 10)

  unless min <= value <= max
    return "Should be between #{min} to #{max} at this version."

  null
