#!/bin/bash
set -e
for i in {1..10}; do
  CODE=$(curl -s -o /dev/null -w "%{http_code}" http://localhost/)
  if [ "$CODE" = "200" ]; then
    echo "Health check passed (HTTP $CODE)"
    exit 0
  fi
  sleep 2
done
echo "Health check FAILED — last code: $CODE"
exit 1
