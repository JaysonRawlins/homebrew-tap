cask "pingplace" do
  version "1.3.2"
  sha256 "086c1e97efbb145bf517e6c55075bf86ffafc349758165a49c962853df598b01"

  url "https://github.com/JaysonRawlins/PingPlace/releases/download/v#{version}/PingPlace.app.tar.gz"
  name "PingPlace"
  desc "Control notification position on macOS"
  homepage "https://github.com/JaysonRawlins/PingPlace"

  depends_on macos: ">= :sonoma"

  app "PingPlace.app"

  zap trash: [
    "~/Library/Preferences/com.grimridge.PingPlace.plist",
    "~/Library/LaunchAgents/com.grimridge.PingPlace.plist",
  ]
end
