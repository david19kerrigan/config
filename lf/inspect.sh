#!/usr/bin/env bash

case "$1" in
    *) bat --paging=never --style=numbers -f "$1";
esac
