# YTTY - YouTube watcher right in TTY

This program lets you watch YouTube videos in TTY - no needs to start X anymore!

# Installation

Firstly, you need to install player and youtube downloader. I recomment `mplayer` as it is the most lightweight, but `vlc` and `mpv` can be used. For searchers install `youtube-dl` or `yt-dlp`

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
mkdir -p ~/bin/
mv YTTY/ytty ~/bin/
```

This will move executable in your local `bin` folder. You can also install it system-wide using `sudo mv YTTY/ytty /usr/local/bin/` instead

# Usage

Run `ytty [OPTIONS] Search request (may be quoted or not)` or `ytty [OPTIONS] --url URL`

All options are CaSe insensitive

When using -url, you need to enter video code, e.g. in *https://www.youtube.com/watch?v=__dQw4w9WgXcQ__* the code is *dQw4w9WgXcQ*

*Note: mplayer uses framebuffer in this project so you need to switch to a TTY. To do this, press `Alt + Ctrl + Fn`, where `n` is any number except 7 (Debian/Ubuntu) or 1 (Arch mostly), because they are occupied with X*

# Examples

Example of playing some good music and video in 16px wide with cache size 2048 and no file out: `ytty --url dQw4w9WgXcQ --size 16 --cache 2048 --no-save''`

*Note: you can set FORMAR (`-f`/`--format`) to empty string to play without saving, or use `-n`/`--no-save`*

Example of playing Belupacito with MOAR cache and with saving: `ytty -c 4096 -f "BELUPACITO | THE BEST SONG EVER" -- Belupacito`

*Note: you can set a static string for FORMAT*

*Note: you may add -- after all arguments to force stop parsing*
