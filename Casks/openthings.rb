# Updated automatically by the Desktop workflow in spuder/OpenThings when a v* tag is released.
cask "openthings" do
  version "0.17.2"
  sha256 "e9bb304e1887188a381ad216d65e2f850823a4ec7ee4a84e3029a27dddaa52f3"

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
