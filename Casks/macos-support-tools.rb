cask "macos-support-tools" do
  version "1.1.0"
  sha256 "e435972afa5cdf52ce86d7eadeb00b17e90ee909fb6d81996f0c7df3fadabaf9"

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
