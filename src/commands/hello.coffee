module.exports.run = (client, msg, args) ->
    if args.length >= 1
        msg.channel.send 'Comando Inválido'
        return
    msg.channel.send 'Hello, :3'
    msg.channel.send 'https://www.youtube.com/watch?v=MoMdpHWx1y4'
