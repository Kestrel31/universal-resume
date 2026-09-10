#!/bin/bash
# Only stop if running — on the first deployment nothing is up yet,
# and a failed stop would fail the whole deployment.
if systemctl is-active --quiet nginx; then
  systemctl stop nginx
fi
