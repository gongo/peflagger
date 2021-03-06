validate = require('validator/flag')

new Vue
  el: '#main'

  filters:
    flag: require('filter/flag')

  computed:
    selectedErrors: ->
      @errorConstants[@selectedVersion]

    selectedDictionary: ->
      @dictionaries[@selectedLanguage]

    validateErrorMessage: ->
      validate(@errorFlag, 0, @selectedErrors.max)

  data:
    selectedLanguage: 'en'
    selectedVersion: 'php54'
    errorConstants:
      "php4x": require('data/php4x')
      "php50": require('data/php50')
      "php52": require('data/php52')
      "php53": require('data/php53')
      "php54": require('data/php54')
    dictionaries:
      en: require('data/dict/en')
      ja: require('data/dict/ja')
