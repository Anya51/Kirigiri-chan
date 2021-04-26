import express from 'express'
import Discord from 'discord.js'

client = new Discord.Client()

app = express()
app.listen process.env.PORT

import config from '../prefix.json'

client.on('ready', () -> 
  console.log "Logged in as #{client.user.tag}!"
);

client.on('message', (msg) ->
    if  !msg.content.toLowerCase().startsWith config.prefix
        return
    if  msg.content.toLowerCase().match /\n/g
        msg.channel.send 'O Kirigiri-chan ainda não possui suporte a múltiplos comandos'
    args = msg.content.trim().slice(config.prefix.length).split (/ +/g)
    command = args.shift().toLowerCase()
    try
        commandFile = require "./commands/#{command}.js"
        commandFile.run client, msg, args
    catch err
        console.log err
)

client.login process.env['TOKEN']
