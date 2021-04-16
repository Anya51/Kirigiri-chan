const Discord = require("discord.js")
const config = require("../config.json")
const {
  Worker, isMainThread, parentPort, workerData
} = require('worker_threads');

module.exports.run = async (client, msg, args) => {
  const code = msg.content.slice(config.prefix.length + 'codaai'.length)
  try{
    const w = new Worker("./commands/workers/infinite.js")
    w.postMessage(code)
    console.log("hi")
    setTimeout( function ( ) {
    w.terminate();
    }, 5000 );
   
  }catch(err){
    console.log(err)
  }
}
