cask "tkzmux" do
  version "0.9.0"
  sha256 "062285573b6fbad886eaa5002cb14e6c27c99e4601bc0198e0d79ebefaa4b495"

  url "https://github.com/tkz0/tkzmux/releases/download/v#{version}/tkzmux-#{version}-arm64.zip"
  name "tkzmux"
  desc "Session manager for Claude Code"
  homepage "https://github.com/tkz0/tkzmux"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :tahoe
  depends_on arch: :arm64

  app "tkzmux.app"

  zap trash: [
    "~/Library/Application Support/tkzmux",
    "~/Library/Caches/se.tkz.tkzmux",
    "~/Library/Preferences/se.tkz.tkzmux.plist",
    "~/Library/Saved Application State/se.tkz.tkzmux.savedState",
  ]
end
