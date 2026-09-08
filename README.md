# tkz0/homebrew-tap

Homebrew tap for [tkzmux](https://github.com/tkz0/tkzmux) — a native macOS Claude Code session
manager.

## Install

```sh
brew install --cask tkz0/tap/tkzmux
```

`brew install` taps this repository automatically; `brew tap tkz0/tap` first is optional.

## Requirements

- macOS 26 (Tahoe) or newer
- Apple silicon (arm64)

## Upgrade / uninstall

```sh
brew upgrade --cask tkzmux
brew uninstall --cask tkzmux          # removes tkzmux.app
brew uninstall --zap --cask tkzmux    # also trashes app support, caches, prefs, saved state
```

## Casks

| Cask | Description |
|---|---|
| [`tkzmux`](Casks/tkzmux.rb) | Session manager for Claude Code |

The cask's `version` and `sha256` are updated automatically by `scripts/bump-cask.sh` in the
[tkzmux](https://github.com/tkz0/tkzmux) repository as part of a tagged release; edit them there
rather than by hand.
