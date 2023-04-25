#!/bin/bash

DL_PATH=$HOME/.clips/robinfrcd-hd/
mkdir -p $DL_PATH

echo "Downloading 1080p h264 videos into $DL_PATH"

dl_urls=$(wget -O - -q https://raw.githubusercontent.com/RobinFrcd/AerialShots/master/entries.json | jq -r '[.assets[]."url-1080-H264"]')

for url in $dl_urls; do
    url=$(echo $url | grep -o 'https:[^"]*')
    if [[ $url ]]; then
      echo "Downloading $url..."
      wget -q --no-clobber $url -P $DL_PATH
    fi
done
