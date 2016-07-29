bucket = require './db/bucket'

readServiceFactory = (_bucket = bucket) ->
    service = {}

    service.getDocument = (id) ->
        return _bucket.get id

    return service

module.exports =
    readService: readServiceFactory()
    readServiceFactory: readServiceFactory
