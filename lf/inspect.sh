#!/usr/bin/env bash

case "$1" in
    *) bat --theme=ansi --paging=never --style=numbers -f "$1";
esac
