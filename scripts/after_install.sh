#!/bin/bash
set -e
chown -R nginx:nginx /usr/share/nginx/html
chmod -R 755 /usr/share/nginx/html
nginx -t   # fail the deployment now rather than serving a broken config
