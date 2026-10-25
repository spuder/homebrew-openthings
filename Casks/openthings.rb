# Updated automatically by the Desktop workflow in spuder/OpenThings when a v* tag is released.
cask "openthings" do
  version "0.7.0"
  sha256 "cacd55f54e9d3f3e3b80a8b08056fdfe6f6fb14be5b29cb467776d139486ea67"

  url "https://github.com/spuder/OpenThings/releases/download/v#{version}/OpenThings-#{version}-macos-universal.dmg"
  name "OpenThings"
  desc "Self-hosted, local-first task manager"
  homepage "https://github.com/spuder/OpenThings"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on :macos

  app "OpenThings.app"
  binary "#{appdir}/OpenThings.app/Contents/MacOS/openthings"

  zap trash: [
    "~/Library/Application Support/io.github.spuder.openthings",
    "~/Library/Caches/io.github.spuder.openthings",
    "~/Library/Preferences/io.github.spuder.openthings.plist",
    "~/Library/Saved Application State/io.github.spuder.openthings.savedState",
    "~/Library/WebKit/io.github.spuder.openthings",
  ]
end
