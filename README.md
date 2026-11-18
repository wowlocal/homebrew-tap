# Homebrew tap for Waypoint

[Waypoint](https://github.com/wowlocal/waypoint-launcher) is a native launcher for Blizzard games on Apple Silicon Macs.

```sh
brew install --cask wowlocal/tap/waypoint
```

Waypoint updates itself, so `brew upgrade` only matters if you turn its updates off. The cask is updated with every release.

`brew uninstall --cask waypoint` removes the app. Your games stay where they are. `brew uninstall --zap --cask waypoint` also removes Waypoint's settings, caches and logs; saved sign-ins stay in your Keychain.
