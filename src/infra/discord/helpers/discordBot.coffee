import config from '../../../../prefix'
export DiscordBotHelper =
    start: (bot) ->
        bot.on 'ready', ->
            console.log(
                "Logged in as #{bot.user.username}#{bot.user.discriminator}"
            )

    msgParser: (bot) ->
        bot.on 'message', (msg) ->
            if !msg.content.toLowerCase().startsWith config.prefix
                return
            if msg.content.toLowerCase().match /\n/g
                msg.channel.send(
                    'O Kirigiri-chan ainda não possui suporte a múltiplos comandos'
                )
            args = msg.content
                .trim()
                .slice config.prefix.length
                .split(/ +/g)
            command = args.shift().toLowerCase()
            try
                commandFile = require """./commands/#{command}.js"""
                commandFile.run bot, msg, args
            catch err
                console.log err
