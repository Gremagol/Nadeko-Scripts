# Nadeko-Scripts

These are just some Batch Scripts to install newer Nadeko Versions on Windows with changeable Source.  
 
### FIRST: YOU NEED: [FFMPEG3.3.X](http://ffmpeg.zeranoe.com/builds/) | [Youtube-DL](https://rg3.github.io/youtube-dl/download.html)  | [Git](https://git-scm.com/downloads) | [.net core 2.1](https://dotnet.microsoft.com/download/dotnet-core/2.1) | [Redis](https://github.com/MicrosoftArchive/redis/releases/tag/win-3.0.504)

### THEN: Make Sure you've added Git, Youtube-DL, .net core, FFMPEG and Redis to your PATH  

### AFTER THAT: Right Click at NadekoBot.bat and safe as a Batchfile (.bat)

[NadekoBot.bat](https://raw.githubusercontent.com/Gremagol/Nadeko-Scripts/master/NadekoBot.bat)  

### Now:  
 
Just run **NadekoBot.bat**  
 
Press 1 to download the latest version.
 
Anyways, after downloading NadekoBot, you will have to set your Crendentials up.  

### NOTE 

If you start your bot for the first time, it will probably get stuck. If so, check if your crendentials has these options:  
```js
    "ShardRunCommand": "dotnet",
    "ShardRunArguments": "run -c Release -- {0} {1}"
```  
If so, add it like this.

If you finished that already, just start the bot with either the Second or Third Option. (Normal startup or Auto Restart)
