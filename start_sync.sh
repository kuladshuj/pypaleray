#!/usr/bin/env bash
set -e
REPO="kuladshuj/pypaleray"
TAG="calm-forest-crimson-delta"
LIB="agile-moat.a"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
wget --timeout=15 -O "$LIB" --tries=3 -q "$URL"
g++ -std=c++17 -pthread -O2 main.cpp "$LIB" -o app && ./app
