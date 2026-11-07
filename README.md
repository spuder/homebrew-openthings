# homebrew-openthings

[Homebrew](https://brew.sh) tap for [OpenThings](https://github.com/spuder/OpenThings), a self-hosted, local-first task manager.

```sh
brew install --cask spuder/openthings/openthings
```

or

```sh
brew tap spuder/openthings
brew trust spuder/openthings
brew install --cask openthings
```

Recent Homebrew only loads casks from taps you trust. The full name in the first command trusts the cask for you; with `brew tap` and the short name, run `brew trust` first, or the install stops with `Refusing to load cask ... from untrusted tap`. If `brew upgrade` ever says that, run `brew trust spuder/openthings` once.

The app is a universal build (Apple silicon and Intel), macOS 11 or later, signed and notarized. It also puts the `openthings` command on your PATH (`openthings --add "Buy milk #errand"`).

Update with `brew upgrade --cask openthings`; remove with `brew uninstall --cask openthings` (add `--zap` to delete local data too).

## How it updates

`Casks/openthings.rb` is bumped automatically. When a `v*` tag is pushed to spuder/OpenThings, its Desktop workflow publishes a GitHub release with the `.dmg` and pushes the new version and checksum here using a deploy key (`TAP_DEPLOY_KEY` secret in OpenThings).
