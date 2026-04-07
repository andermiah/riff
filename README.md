# riff

Open a brainstorming session with Claude from your terminal. Bring a half-formed idea — rough, vague, barely-there — and work through it together.

## Prerequisite

[Claude Code](https://claude.ai/code) must be installed and you must be logged in.

## Install

```sh
git clone https://github.com/andermiah/riff.git
cd riff
chmod +x install.sh
./install.sh
```

Supports **fish**, **bash**, and **zsh**.

## Usage

```sh
riff
```

That's it. Claude will greet you and invite you to share what's on your mind.

Previous sessions can be resumed with:

```sh
claude --resume
```

and selecting a session named `riff`.
