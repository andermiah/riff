#!/bin/sh
set -e

REPO_DIR="$(cd "$(dirname "$0")" && pwd)"

check_claude() {
    if ! command -v claude >/dev/null 2>&1; then
        echo "Error: 'claude' is not installed or not in your PATH."
        echo "Install Claude Code: https://claude.ai/code"
        exit 1
    fi
}

install_fish() {
    FISH_FUNCTIONS="$HOME/.config/fish/functions"
    mkdir -p "$FISH_FUNCTIONS"
    cp "$REPO_DIR/riff.fish" "$FISH_FUNCTIONS/riff.fish"
    echo "Installed to $FISH_FUNCTIONS/riff.fish"
    echo "Run 'riff' in any new fish terminal."
}

install_sh() {
    DEST="$HOME/.riff.sh"
    cp "$REPO_DIR/riff.sh" "$DEST"

    RC=""
    if [ -n "$BASH_VERSION" ] || [ "$(basename "$SHELL")" = "bash" ]; then
        RC="$HOME/.bashrc"
    elif [ -n "$ZSH_VERSION" ] || [ "$(basename "$SHELL")" = "zsh" ]; then
        RC="$HOME/.zshrc"
    else
        echo "Installed to $DEST"
        echo "Add this line to your shell rc file to use 'riff':"
        echo "  source $DEST"
        exit 0
    fi

    if ! grep -q "source $DEST" "$RC" 2>/dev/null; then
        echo "" >> "$RC"
        echo "# riff — brainstorming session" >> "$RC"
        echo "source $DEST" >> "$RC"
        echo "Added 'source $DEST' to $RC"
    else
        echo "$RC already sources riff — nothing to add."
    fi

    echo "Restart your terminal or run: source $DEST"
}

check_claude

SHELL_NAME="$(basename "$SHELL")"

if [ "$SHELL_NAME" = "fish" ]; then
    install_fish
else
    install_sh
fi
