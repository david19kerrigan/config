#!/bin/bash

transmission-remote -a "$@" && notify-send "Torrent Added: $@"
