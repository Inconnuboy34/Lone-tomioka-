Hi, 🎊  𝑰'𝑴 𝑫𝑬𝑺𝑲 ➖ 𝑴𝑫👅

***
ミ★ 𝘈 𝘚𝘐𝘔𝘗𝘓𝘌 𝘉𝘖𝘛 ★彡

<h1 align="center"> THE DESK MD DEVICE </h1>
<p align="center">  
  
***
  
![IMG-20240813-WA0406](https://github.com/user-attachments/assets/32af4af6-2fe8-42bd-be2e-f06cbc755f66)

const fetch = require('node-fetch')
const yts = require("yt-search")
const NodeID3 = require('node-id3')
const sleep = ms => new Promise(resolve => setTimeout(resolve, ms));
const axios = require("axios")
} = require("../bdd/functions.js");
    
adams(
    {
        name: "play"
        category: "downloader",
        desc: "To download song"
    },
    async ({
        m, client, args
    }) => {
      args = args || m.quoted?.text;
        if (!args) return m.reply("_Enter Query !_")
      let mes = await client.sendMessage(m.jid, { text : `_DESK MD is downloading your song...._` } , { quoted : m })
   const res = await axios.get(`https://ibraah.adams.me/api/v1/yta?query=${args}`)
    let response = await res.data
    let coverBuffer = await (await fetch(`${response.data.thumbnail}`)).buffer()
     client.sendMessage(m.jid, { text : `_Downloaded successfully✅ : ${response.data.title}_` , edit : mes.key })
   const songbuff = await (await fetch(`$${response.data.title}_` , edit : mes.key })
   const songbuff = await (await fetch(`${response.data.downloadUrl}`)).buffer()
   const song = await AddMp3Meta(songbuff , coverBuffer , { title : response.data.title , artist : response.data.channel.name } )
     return await client.sendMessage(m.jid , {audio : song ,  mimetype : 'audio/mpeg'} , { quoted : m })
      
    })
