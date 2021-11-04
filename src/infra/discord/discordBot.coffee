import { Client } from 'discord.js'

import { DiscordBotHelper } from './helpers/discordBot'

bot = new Client()
DiscordBotHelper.start bot
DiscordBotHelper.msgParser bot

export default bot
