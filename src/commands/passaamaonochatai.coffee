module.exports.run = (client, msg) ->
    loop
        fetched = await msg.channel.messages.fetch limit: 100
        msg.channel.bulkDelete fetched
        break unless fetched.size >= 2
