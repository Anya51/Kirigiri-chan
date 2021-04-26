Discord = require 'discord.js'

module.exports.run = (client, msg, args) ->
    if(args.length >= 1)
        return msg.channel.send 'Comando Inválido'
    msg.channel.send 'Me mama, sou foda!!!'