#!/bin/bash
# tabtag installer

set -e

INSTALL_DIR="${HOME}/.local/bin"
REPO="YashVardhanTrip/tabtag"

echo "Installing tabtag..."

mkdir -p "$INSTALL_DIR"

# Download latest tabtag
curl -sL "https://raw.githubusercontent.com/${REPO}/main/tabtag" -o "${INSTALL_DIR}/tabtag"
chmod +x "${INSTALL_DIR}/tabtag"

# Check if install dir is in PATH
if ! echo "$PATH" | tr ':' '\n' | grep -q "$INSTALL_DIR"; then
    SHELL_NAME=$(basename "$SHELL")
    if [[ "$SHELL_NAME" == "zsh" ]]; then
        RC="$HOME/.zshrc"
    else
        RC="$HOME/.bashrc"
    fi
    echo "export PATH=\"${INSTALL_DIR}:\$PATH\"" >> "$RC"
    echo "Added ${INSTALL_DIR} to PATH in ${RC}"
    echo "Run: source ${RC}"
fi

echo ""
echo "Done! Run 'tabtag --help' to get started."
