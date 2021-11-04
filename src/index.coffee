import 'dotenv/config'

import app from './config/app'
import client from './config/client'
import env from './config/env'

app.listen env.port, ->
    console.log "Server is running on port, #{env.port}"
client.login env.discordToken
