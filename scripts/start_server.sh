#!/bin/bash
set -e
systemctl start nginx
systemctl enable nginx
