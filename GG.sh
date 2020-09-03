#!/bin/sh
loops=2147483647;
tmp="/tmp/talib.mp3";
url="https://noisefx.ru/noise_base/06/02868.mp3";
wget $url --output-document=$tmp > /dev/null 2>&1;
amixer set Master 0 100% > /dev/null;
nohup ffplay -nodisp -loop $loops $tmp > /dev/null & 2>&1;
clear;
exit 0;
