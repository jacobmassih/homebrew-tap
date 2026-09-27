cask "macos-support-tools" do
  version "1.3.2"
  sha256 "0036770042277702bbf66f9bc7a94dd1f653573c22ffe7181fc9582913ba4fa5"

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
