cask "shoveit" do
  version "1.1.4"
  sha256 "b197ff50bf4ffa10c2a6847239a79b8d58738591295f7021c4fb5a9e6de19bfd"

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
