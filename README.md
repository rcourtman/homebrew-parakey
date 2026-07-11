# Homebrew tap for Presspeech

[Presspeech](https://github.com/rcourtman/presspeech) — push-to-talk dictation for macOS Apple Silicon.

## Install

```sh
brew install --cask rcourtman/presspeech/presspeech
```

(`brew` will auto-tap on first install — no separate `brew tap` step required.)

## Update

```sh
brew upgrade --cask presspeech
```

## Uninstall

```sh
brew uninstall --cask presspeech       # remove app
brew uninstall --zap --cask presspeech # remove app + preferences + logs
brew untap rcourtman/presspeech         # remove this tap
```

## What this is

A [Homebrew Cask](https://github.com/Homebrew/homebrew-cask) tap that
ships pre-built, signed, notarised release builds of Presspeech from
[github.com/rcourtman/presspeech](https://github.com/rcourtman/presspeech).
The actual project lives there; this repo only hosts the cask
formula.
