cask "pingplace" do
  version "1.4.0"
  sha256 "4da78fb023ff4a41b3cf35487712d0d874430e08191cd8140b31401b5ced4cc3"

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
