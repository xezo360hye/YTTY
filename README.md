# YTTY - YouTube watcher right in TTY

## What's this?

As the title says, this program lets you watch YouTube videos in TTY - no needs to start X anymore!

## Installation

Firstly, you need to install `mplayer` and `youtube-dl`

* Arch:
```
sudo pacman -Sy mplayer youtube-dl
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

## Creating command to use this everywhere

Create a file that will call `start.sh` and move it to your `$PATH`:

```
echo "/PATH/TO/YTTY/start.sh" > yt
chmod +x yt
sudo mv yt YOUR_PATH_FOLDER
```

For example, `echo '~/YTTY/start.sh "$@"'` and `sudo mv yt /usr/bin/`

After all these steps, you can simply use `yt REQUEST` and enjoy your movie!