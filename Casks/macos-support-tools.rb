cask "macos-support-tools" do
  version "1.3.0"
  sha256 "46dba7ad4917f218b18208619d13ffd8fc69ea4b5f3d85336ec2a8771d9b4f5a"

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
