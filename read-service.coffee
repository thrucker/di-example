stampit = require 'stampit'
bucket = require './db/bucket'

ReadService = stampit
    methods:
        getDocument: (id) ->
            return @bucket.get id
    refs: {bucket}

module.exports = ReadService
