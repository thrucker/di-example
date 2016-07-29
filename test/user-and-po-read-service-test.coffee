describe 'userAndPoReadService', ->
    userAndPoReadService = null

    beforeEach ->
        bucket = new InMemBucket()
        container = require '../di-container'

        container.register bucket, 'bucket'

        userAndPoReadService = container.get 'user-and-po-read-service'

    it 'should return user and po', ->
        bucket.set 'userid', {name: 'foo', type: 'user'}
        bucket.set 'poid', {name: 'bar', type: 'po'}

        {user, po} = userAndPoReadService.getUserAndPo 'userid', 'poid'

        expect(user.name).to.equal 'foo'
        expect(po.name).to.equal 'bar'
