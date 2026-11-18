cask "waypoint" do
  version "1.2.0"
  sha256 "81934b60339faada473ff48ff59a36a3fd57dbe6ff76b3d8484ae360bfaf1dcc"

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
