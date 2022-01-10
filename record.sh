#!/bin/bash

echo "Stream duration $@"

duration=$1

# Start ffmpeg
ffmpeg -i https://abcradiolivehls-lh.akamaihd.net/i/triplejnsw_1@327300/master.m3u8 \
  -nostdin \
  -t $duration \
  -map 0:a:3 \
  -loglevel info \
  /download/$(date).aac >> /download/output.log 2>&1 < /dev/null
