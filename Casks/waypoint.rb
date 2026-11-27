cask "waypoint" do
  version "1.2.3"
  sha256 "7bb3df043216f714a472969368c958c81bdb6819627843371b1ba65b53fa9065"

  url "https://github.com/wowlocal/waypoint-launcher/releases/download/v#{version}/Waypoint-#{version}.dmg"
  name "Waypoint"
  desc "Native launcher for Blizzard games"
  homepage "https://wowlocal.github.io/waypoint-launcher/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "Waypoint.app"

  # Not all of Application Support/Waypoint: Windows/ holds each Windows
  # game's Wine prefix, with its saves and settings.
  zap trash: [
    "~/Library/Application Support/dev.waypoint.launcher",
    "~/Library/Application Support/Waypoint/Downloads",
    "~/Library/Application Support/Waypoint/installs.json",
    "~/Library/Application Support/Waypoint/Runtimes",
    "~/Library/Caches/dev.waypoint.launcher",
    "~/Library/HTTPStorages/dev.waypoint.launcher",
    "~/Library/Logs/Waypoint",
    "~/Library/Preferences/dev.waypoint.launcher.plist",
    "~/Library/WebKit/dev.waypoint.launcher",
  ]
end
