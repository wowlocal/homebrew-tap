# Homebrew tap for Waypoint

[Waypoint](https://github.com/wowlocal/waypoint-launcher) is a native launcher for Blizzard games on Apple Silicon Macs.

```sh
brew install --cask wowlocal/tap/waypoint
```

Waypoint updates itself, so `brew upgrade` skips it. If you turn Waypoint's own updates off, use `brew upgrade --greedy`. The cask is updated with every release.

`brew uninstall --cask waypoint` removes the app. Your games stay where they are. `brew uninstall --zap --cask waypoint` also removes Waypoint's settings, caches, logs and downloaded components. It keeps the saves and settings of Windows games (in `~/Library/Application Support/Waypoint/Windows`) and your saved sign-ins in Keychain.
