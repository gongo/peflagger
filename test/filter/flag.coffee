flagFilter = require 'filter/flag'

vuenv =
  flagFilter: flagFilter
  input: ''
  dictionary:
    A:
      description: 'A is A'
      note: 'AAA'
    B:
      description: 'B is B'
      note: 'BBB'
    C:
      description: 'C is C'
      note: 'CCC'

describe 'filter/flag', ->
  context 'Specified flag bit value that exists', ->
    beforeEach ->
      @flags =
        constants:
          A: 1
          B: 2
          C: 4

    it 'should return array of error flag information was matched', ->
      vuenv.input = 3 # A | B
      result = vuenv.flagFilter(@flags, 'input', 'dictionary')
      assert.equal(result.length, 2)

      vuenv.input = 5 # A | C
      result = vuenv.flagFilter(@flags, 'input', 'dictionary')
      assert.equal(result.length, 2)

      vuenv.input = 7 # A | B | C
      result = vuenv.flagFilter(@flags, 'input', 'dictionary')
      assert.equal(result.length, 3)

    it 'return value should have error constant information', ->
      vuenv.input = 5
      result = vuenv.flagFilter(@flags, 'input', 'dictionary')

      # A
      assert.equal result[0].name, 'A'
      assert.equal result[0].value, 1
      assert.equal result[0].description, 'A is A'
      assert.equal result[0].note, 'AAA'

      # C
      assert.equal result[1].name, 'C'
      assert.equal result[1].value, 4
      assert.equal result[1].description, 'C is C'
      assert.equal result[1].note, 'CCC'

    it 'should have been sorted by value', ->
      @flags = { constants: { A: 128, B: 2, C: 512 } }
      vuenv.input = 1023
      result = vuenv.flagFilter(@flags, 'input', 'dictionary')

      actual = result.map (r) -> r.name
      expect = ["B", "A", "C"]
      assert.deepEqual actual, expect

  context 'Specified flag bit value that not exists', ->
    beforeEach ->
      @flags =
        constants:
          A: 4
          B: 8
          C: 16

    it 'should return empty array', ->
      vuenv.input = 1
      result = vuenv.flagFilter(@flags, 'input', 'dictionary')
      assert.equal(result.length, 0)
