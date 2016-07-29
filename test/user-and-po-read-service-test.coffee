describe 'userAndPoReadService', ->
    userAndPoReadService = null

    beforeEach ->
        bucket = new InMemBucket()

        {readServiceFactory} = require '../read-service'
        {poReadServiceFactory} = require '../po-read-service'
        {userReadServiceFactory} = require '../user-read-service'
        {userAndPoReadServiceFactory} = require '../user-and-po-read-service'

        readService = readServiceFactory bucket
        poReadService = poReadServiceFactory readService
        userReadService = userReadServiceFactory readService
        userAndPoReadService = userAndPoReadServiceFactory userReadService, poReadService

    it 'should return user and po', ->
        bucket.set 'userid', {name: 'foo', type: 'user'}
        bucket.set 'poid', {name: 'bar', type: 'po'}

        {user, po} = userAndPoReadService.getUserAndPo 'userid', 'poid'

        expect(user.name).to.equal 'foo'
        expect(po.name).to.equal 'bar'
