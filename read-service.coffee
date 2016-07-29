readServiceFactory = (_bucket = bucket) ->
    service = {}

    service.getDocument = (id) ->
        return _bucket.get id

    return service

readServiceFactory.$inject = ['bucket']

module.exports = readServiceFactory
