#!/bin/sh

find /home/david/Music/Podcasts -name "*.mp3" -type f -mmin -15 -exec kid3-cli -c "set date ''" -c "set artist 'Podcasts'" {} \;
find /home/david/Music/Podcasts/cum\ town\ RSS -name "*.mp3" -type f -mmin -15 -exec kid3-cli -c "set album 'Cum Boys'" {} \;
find /home/david/Music/Podcasts/Lex\ Fridman\ Podcast -name "*.mp3" -type f -mmin -15 -exec kid3-cli -c "set album 'Lex Fridman'" {} \;
find /home/david/Music/Podcasts/The\ Adam\ Friedland\ Show\ Podcast -name "*.mp3" -type f -mmin -15 -exec kid3-cli -c "set album 'Adam Friedland'" {} \;
find /home/david/Music/Podcasts/Dan\ Carlin\'s\ Hardcore\ History -name "*.mp3" -type f -mmin -15 -exec kid3-cli -c "set album 'Hardcore History'" {} \;
mpc update
