validator = require 'validator/flag'

describe 'validator/flag', ->
  context 'With valid input value', ->
    it 'should return null', ->
      assert.equal validator( 0, 0, 10), null
      assert.equal validator( 5, 0, 10), null
      assert.equal validator(10, 0, 10), null

  context 'With empty string', ->
    it 'should return null', ->
      assert.equal validator("", 0, 10), null

  context 'With not number', ->
    it 'should return error message', ->
      expect = "Error: Must be a number"

      assert.equal validator("foo", 0, 10), expect
      assert.equal validator("123a", 0, 10), expect

  context 'With invalid input value', ->
    it 'should return error message', ->
      expect = "Warning: Should be between 0 to 255 at this version."

      assert.equal validator( -1, 0, 255), expect
      assert.equal validator(256, 0, 255), expect

