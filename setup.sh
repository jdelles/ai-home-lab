#!/bin/bash
set -e

echo "🚀 Initializing Local AI Platform..."

# Check for Brew, Ollama, and Docker
command -v brew >/dev/null 2>&1 || { echo "Installing Homebrew..."; /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"; }
command -v ollama >/dev/null 2>&1 || { echo "Installing Ollama..."; brew install ollama; }
command -v docker >/dev/null 2>&1 || { echo "Installing OrbStack..."; brew install --cask orbstack; echo "Please open OrbStack and rerun script."; exit 1; }

make setup