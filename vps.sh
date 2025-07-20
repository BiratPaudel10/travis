#!/bin/bash

# Start tmate
echo "🟢 Starting tmate..."
tmate -S /tmp/tmate.sock new-session -d
tmate -S /tmp/tmate.sock wait tmate-ready

# Print SSH & Web link
echo "🔑 SSH: $(tmate -S /tmp/tmate.sock display -p '#{tmate_ssh}')"
echo "🌍 Web: $(tmate -S /tmp/tmate.sock display -p '#{tmate_web}')"

# Start an HTTP server to keep Render container alive
nohup python3 -m http.server 10000 > /dev/null 2>&1 &

# Keep alive with logs
while true; do
  echo "✅ VPS is running..."; sleep 60;
done
