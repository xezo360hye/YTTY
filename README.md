# YTTY - YouTube watcher right in TTY

## What's this?

As the title says, this program lets you watch YouTube videos in TTY - no needs to start X anymore!

## Installation

Firstly, you need to install `mplayer` and `youtube-dl`

* Arch:
```
sudo pacman -S mplayer youtube-dl
```

* Debian / Ubuntu (install pip3 first):
```
pip3 install youtube-dl
sudo apt-get install mplayer
```

* Other distros: find on the internet and please share with me cuz I'm too lazy to search

After you've installed requirements, just run the commands below:
```
git clone https://github.com/xezo360hye/YTTY
cd YTTY
chmod +x start.sh
```

And you are ready to use this awesome program!

## Usage

Just run `./start.sh SEARCH REQUEST` in TTY

*Note: mplayer uses framebuffer in this project so AFAIK it's impossible to use this in graphical terminal (e.g. Konsole)*

*Note: running out of project folder is also supported - just specify path to project, like `~/YTTY/start.sh SEARCH`*

### Creating command to use this everywhere

Create a file that will call `start.sh` and move it to your `$PATH`:

```
echo "/PATH/TO/YTTY/start.sh" > yt
chmod +x yt
sudo mv yt YOUR_PATH_FOLDER
```

For example, `echo '~/YTTY/start.sh "$@"'` and `sudo mv yt /usr/bin/`

After all these steps, you can simply use `yt REQUEST` and enjoy your movie!


## Options

You can use `-oPtiON VALUE` to control program. You can specify all the options from `config.sh` (the ones you enter in command are prior, e.g. if you use -debug true it ignores whatever said in config), and also you can set URL to skip search

Example of playing some good music and video in 16px wide with cache size 2048 and no file out: `./start.sh -url dQw4w9WgXcQ -size 16 -cache 2048 -format ''`

*Note: you can set FORMAT to empty string ('' or "") to play without saving*

Example of playing Belupacito with MOAR cache and with saving: `./start.sh -cache 8096 -format "BELUPACITO | THE BEST SONG EVER" -- Belupacito`

*Note: you can set a static string for FORMAT*

*Note: you may add -- after all arguments but it will be ignored (and removed from search)*

## Troubles and questions

<details>
<summary>Error "libavformat file format detected"
</summary>

* It's not actually an error - it's the video format that mplayer detected. If you see "*Cache empty, consider...*" after libavformat lines than try increasing cache size, this should help
</details>