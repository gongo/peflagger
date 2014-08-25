module.exports = (current, min, max) ->
  return null if current == ""

  unless isFinite(current)
    return "Error: Must be a number"

  value = parseInt(current, 10)

  unless min <= value <= max
    return "Warning: Should be between #{min} to #{max} at this version."

  null
