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

  zap trash: [
    "~/Library/Application Support/Waypoint",
    "~/Library/Caches/dev.waypoint.launcher",
    "~/Library/HTTPStorages/dev.waypoint.launcher",
    "~/Library/Logs/Waypoint",
    "~/Library/Preferences/dev.waypoint.launcher.plist",
    "~/Library/WebKit/dev.waypoint.launcher",
  ]
end
