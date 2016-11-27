#!/bin/sh
if [ ! -D "/data/download" ]; then mkdir -p /data/download; fi
if [ ! -D "/data/watch" ]; then mkdir -p /data/watch; fi
if [ ! -D "/data/incomplete" ]; then mkdir -p /data/incomplete; fi
if [ ! -D "/data/config" ]; then mkdir -p /data/config; fi
chmod 1777 /data

exec "$@"
