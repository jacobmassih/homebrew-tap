cask "macos-support-tools" do
  version "1.3.3"
  sha256 "4195b755f7f4062779dbb8484c7c5806c18a2a768cd5f65fe7109b4bd724164b"

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
