stampit = require 'stampit'
ReadService = require './read-service'
PoModel = require './models/po-model'

PoReadService = stampit
    methods:
        getPo: (id) ->
            doc = @getDocument id
            return new PoModel doc
.compose ReadService

module.exports = PoReadService
