# AerialShots

To add this repo's videos to [Aerial](https://aerialscreensaver.github.io/), follow these steps:
1. System Preferences -> Screen Saver
2. Aerial -> Screen Saver Options ...
3. Settings (the gear, top left)
4. Custom sources -> Add Online...
5. Paste this link: https://raw.githubusercontent.com/RobinFrcd/AerialShots/master
6. Click the down arrow to download the videos

## Shots

- 5 shots from [Norway](https://github.com/RobinFrcd/AerialShots/releases/tag/norway-2021-v1) 🇳🇴
- 3 shots from [French Alps](https://github.com/RobinFrcd/AerialShots/releases/tag/french-alps-2022-v1) 🏔️🇫🇷
- 10 shots from [Reunion Island](https://github.com/RobinFrcd/AerialShots/releases/tag/reunion-2022) 🇷🇪🇫🇷

## Run On Linux

1. Install dependencies: `sudo apt install -y wget xscreensaver mpv`

2. Download videos:
   - `./scripts/dl-shots-4k.sh` for 4k videos
   - `./scripts/dl-shots-hd.sh` for HD (1080p) videos

3. Launch xscreensaver to create `~/.xscreensaver` and add this in the `programs:`
(replace `4k` with `hd` if you've downloaded hd clips):
```bash
"RobinFrcd"  mpv --really-quiet --no-stop-screensaver     \
              --fs --vo=gpu --panscan=1 --hwdec=auto      \
              --wid=$XSCREENSAVER_WINDOW --no-audio       \
              --loop-playlist=2  --shuffle                \
              $HOME/.clips/robinfrcd-4k/                   \n\
```

4. In xscreensaver, select `Mode: Only One Screen Saver` and `RobinFrcd`

To configure `xscreensaver` correctly, see this [stackoverflow post](https://askubuntu.com/a/493148)
