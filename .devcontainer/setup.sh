#!/bin/bash
set -e

echo "[+] Ensuring node_modules folders exist..."
mkdir -p /workspace/node_modules
mkdir -p /workspace/client/node_modules
mkdir -p /workspace/server/node_modules

echo "[+] Installing root dependencies (if package.json found)..."
if [ -f /workspace/package.json ]; then
  cd /workspace
  npm install
fi

echo "[+] Installing client dependencies (if client/package.json found)..."
if [ -f /workspace/client/package.json ]; then
  cd /workspace/client
  npm install
fi

echo "[+] Installing server dependencies (if server/package.json found)..."
if [ -f /workspace/server/package.json ]; then
  cd /workspace/server
  npm install
fi

echo "[✓] Setup complete."
