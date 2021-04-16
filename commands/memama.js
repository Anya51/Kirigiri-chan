const Discord = require("discord.js")

module.exports.run = async (client, msg, args) => 
{
  if(args.length >= 1 ){
    msg.channel.send("Comando Inválido")
    return
  }
  msg.channel.send("Me mama, sou foda!!!")
}