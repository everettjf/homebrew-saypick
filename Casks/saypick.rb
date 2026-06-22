cask "saypick" do
  version "0.1.0"
  sha256 "a526c5f188e516cb17d64cbdc986272191bb1c51019757d6a1d3bd33ce48c9a3"

  url "https://github.com/everettjf/Saypick/releases/download/v#{version}/Saypick-#{version}.dmg"
  name "Saypick"
  desc "System-wide AI translation and inline rewrite"
  homepage "https://github.com/everettjf/Saypick"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :tahoe

  app "Saypick.app"

  zap trash: "~/Library/Preferences/com.xnu.saypick.plist"
end
