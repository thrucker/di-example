class UserModel
    constructor: (@doc) ->

    name: ->
        return @doc.name

module.exports = UserModel
