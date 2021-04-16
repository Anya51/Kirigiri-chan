const Discord = require("discord.js")

module.exports.run = async (client, msg, args) => 
{
  let fetched;
  do {
    fetched = await msg.channel.messages.fetch({limit: 100});
    msg.channel.bulkDelete(fetched);
  }
  while(fetched.size >= 2);
}