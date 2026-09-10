#!/bin/bash
set -e
# CodeDeploy fails if destination files already exist — clear first.
# This is also what removes pages deleted from the repo.
if [ -d /usr/share/nginx/html ]; then
  rm -rf /usr/share/nginx/html/*
fi
mkdir -p /usr/share/nginx/html
