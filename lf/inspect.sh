#!/usr/bin/env bash

case "$1" in
    *) bat --paging=never --style=plain -f "$1";
esac
