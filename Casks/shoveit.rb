cask "shoveit" do
  version "1.1.6"
  sha256 "7704c181fb0cca023348b29b9af6aebe9cbe8320ae0aab1171e74ab448f96452"

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
