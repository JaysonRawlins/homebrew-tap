cask "shoveit" do
  version "1.1.0"
  sha256 "a122ccc76e8db7dc8544e6f019b716a5f95c2642cff5c1d3bef472d3615adc81"

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
