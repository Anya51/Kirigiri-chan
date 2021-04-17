const express = require("express")
const app = express()

app.listen(process.env.PORT)

const Discord = require("discord.js")
const client = new Discord.Client()
const config = require("./prefix.json")


client.on('ready', () => {
  console.log(`Logged in as ${client.user.tag}!`);
});
/\n/g
client.on('message', msg => {
  if (!msg.content.toLowerCase().startsWith(config.prefix)) return
  if (msg.content.toLowerCase().match(/\n/g)){ 
    msg.channel.send("O Kirigiri-chan ainda não possui suporte a múltiplos comandos")
    return
  }


  const args = msg.content.trim().slice(config.prefix.length).split(/ +/g)
  const command = args.shift().toLowerCase()


  try{
    const commandFile = require(`./commands/${command}.js`)
    commandFile.run(client, msg, args)

  }catch(err){
    console.log(err)
  }

});

client.login(process.env['TOKEN'])

