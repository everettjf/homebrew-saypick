cask "saypick" do
  version "0.1.0"
  sha256 "412e36c7b30369236e51a179568aecd5eb6694e16dc3f6b5ae4b3bab38c95dec"

  url "https://github.com/everettjf/Saypick/releases/download/v#{version}/Saypick-#{version}.dmg",
      verified: "github.com/everettjf/Saypick/"
  name "Saypick"
  desc "System-wide AI translation and inline rewrite"
  homepage "https://github.com/everettjf/Saypick"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :sequoia

  app "Saypick.app"

  zap trash: "~/Library/Preferences/com.xnu.saypick.plist"
end
