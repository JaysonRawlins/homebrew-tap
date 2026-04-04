cask "shoveit" do
  version "1.1.2"
  sha256 "e3a5b8963d43b87ad2ed98520668f9e7a75871304710f43a575b573d99c55601"

  url "https://github.com/JaysonRawlins/ShoveIt/releases/download/v#{version}/ShoveIt.app.tar.gz"
  name "ShoveIt"
  desc "Control notification position on macOS"
  homepage "https://github.com/JaysonRawlins/ShoveIt"

  depends_on macos: ">= :sonoma"

  app "ShoveIt.app"

  zap trash: [
    "~/Library/Preferences/com.jjrawlins.ShoveIt.plist",
    "~/Library/LaunchAgents/com.jjrawlins.ShoveIt.plist",
  ]
end
