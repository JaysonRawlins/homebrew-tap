cask "pingplace" do
  version "1.4.1"
  sha256 "8d2598f99582422b3058a9427f48ecf4e8e062aae941868cd32badf4c5471fa8"

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
