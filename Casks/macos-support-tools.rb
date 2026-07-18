cask "macos-support-tools" do
  version "1.2.0"
  sha256 "e10313f64d8bf4cd994b5f13f64863032a8939c716b4c5de93ec5e45c3386dcd"

  url "https://github.com/jacobmassih/macOS-support-tools/releases/download/v#{version}/macos-support-tools-#{version}-macos.zip"
  name "macos-support-tools"
  desc "Menu bar utility for external mouse behavior tweaks"
  homepage "https://github.com/jacobmassih/macOS-support-tools"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :tahoe

  app "macos-support-tools.app"

  caveats do
    unsigned_accessibility
  end

  zap trash: [
    "~/Library/Preferences/com.mst.macos-support-tools.plist",
  ]
end
