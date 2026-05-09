# Homebrew tap for Parakey

[Parakey](https://github.com/rcourtman/parakey) — push-to-talk dictation for macOS Apple Silicon.

## Install

```sh
brew install --cask rcourtman/parakey/parakey
```

(`brew` will auto-tap on first install — no separate `brew tap` step required.)

## Update

```sh
brew upgrade --cask parakey
```

## Uninstall

```sh
brew uninstall --cask parakey       # remove app
brew uninstall --zap --cask parakey # remove app + preferences + logs
brew untap rcourtman/parakey         # remove this tap
```

## What this is

A [Homebrew Cask](https://github.com/Homebrew/homebrew-cask) tap that
ships pre-built, signed, notarised release builds of Parakey from
[github.com/rcourtman/parakey](https://github.com/rcourtman/parakey).
The actual project lives there; this repo only hosts the cask
formula.
