cask "shoveit" do
  version "1.0.2"
  sha256 "819602374d6c006a31d6dee0dd6a838bc37afb872c489a1e472746f7b566f27a"

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
