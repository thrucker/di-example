class InMemBucket
    constructor: ->
        @docs = {}

    get: (id) ->
        return @docs[id]

    set: (id, value) ->
        @docs[id] = value
        return

module.exports = InMemBucket
