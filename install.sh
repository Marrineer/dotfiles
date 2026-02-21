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

echo "[*] Install necessary package"
sudo apt install tree maven gradle curl unzip 

echo "[✓] Java version:"
java -version

echo "[*] Ensure SDKMAN is loaded"
echo 'export SDKMAN_DIR="$HOME/.sdkman"' >> ~/.bashrc
echo '[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"' >> ~/.bashrc
