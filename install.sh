#!/usr/bin/env bash
set -e

echo "[*] Update system..."
sudo apt update && sudo apt upgrade -y

echo "[*] Install base packages..."
sudo apt install -y zip unzip ca-certificates build-essential

echo "[*] Load SDKMAN..."
source "$HOME/.sdkman/bin/sdkman-init.sh"

echo "[*] Installing Java 21.0.4-tem..."
sdk install java 21.0.4-tem || true
sdk default java 21.0.4-tem

echo "[✓] Java version:"
java -version
