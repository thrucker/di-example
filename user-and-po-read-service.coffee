{poReadService} = require './po-read-service'
{userReadService} = require './user-read-service'

userAndPoReadServiceFactory = (_userReadService = userReadService, _poReadService = poReadService) ->
    service = {}

    service.getUserAndPo = (userId, poId) ->
        user = _userReadService userId
        po = _poReadService poId

        return {user, po}

    return service

module.exports =
    userAndPoReadService: userAndPoReadServiceFactory()
    userAndPoReadServiceFactory: userAndPoReadServiceFactory
