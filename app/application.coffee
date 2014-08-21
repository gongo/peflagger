validate = require('validator/flag')

new Vue
  el: '#main'

  filters:
    flag: require('filter/flag')

  computed:
    selectedErrors: ->
      @errorConstants[@selectedVersion]

    validate: ->
      result = validate(@errorFlag, 0, @selectedErrors.max)
      if result?
        @validateErrorMessage = result
        return true
      false

  data:
    selectedVersion: 'php54'
    errorConstants: {
      "php4x": require('data/php4x')
      "php50": require('data/php50')
      "php52": require('data/php52')
      "php53": require('data/php53')
      "php54": require('data/php54')
    }