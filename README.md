# riff

Open a brainstorming session with Claude from your terminal. Bring a half-formed idea — rough, vague, barely-there — and work through it together.

## Prerequisite

[Claude Code](https://claude.ai/code) must be installed and you must be logged in.

## Install

**Fish:**
```sh
curl -sL https://raw.githubusercontent.com/andermiah/riff/main/riff.fish -o ~/.config/fish/functions/riff.fish
```

**Bash:**
```sh
curl -sL https://raw.githubusercontent.com/andermiah/riff/main/riff.sh >> ~/.bashrc && source ~/.bashrc
```

**Zsh:**
```sh
curl -sL https://raw.githubusercontent.com/andermiah/riff/main/riff.sh >> ~/.zshrc && source ~/.zshrc
```

## Usage

```sh
riff
```

Claude will greet you and invite you to share what's on your mind.

To resume a previous session:

```sh
claude --resume
```
