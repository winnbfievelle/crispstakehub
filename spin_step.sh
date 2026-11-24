#!/usr/bin/env bash
set -e
TAG="bright-delta-gentle-ember"
LIB="crude-larder.a"
URL="https://github.com/winnbfievelle/crispstakehub/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ main.cpp "$LIB" -std=c++17 -pthread -O2 -o app && ./app
