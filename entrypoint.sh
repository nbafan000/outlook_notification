#!/bin/sh

# Fix permissions at runtime after volume is mounted
mkdir -p /data
chown -R node:node /data

# Switch to node user and start n8n
exec su node -c "n8n start"
