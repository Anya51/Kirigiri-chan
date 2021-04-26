Discord = require 'discord.js'

module.exports.run = (client, msg, args) ->
    sayMessage = args.join ' '
    if args.length == 0
        msg.channel.send "Você é o culpado #{msg.author}" + sayMessage
        return
    else if args.length > 1
        for a of args
            if !a.startsWith '<@'
                msg.channel.send 'Comando Inválido'
                return
            msg.channel.send 'Vocês são os culpados ' + sayMessage
            return
    else
    if !args[0].startsWith '<@'
        msg.channel.send 'Comando Inválido'
        return
    if msg.mentions.users.first == client.user.id || msg.mentions.roles.first
        msg.channel.send "Eu sou a culpada? Acho que não hein. Você é o culpado #{msg.author}"
        return
    msg.channel.send 'Você é o culpado ' + sayMessage
