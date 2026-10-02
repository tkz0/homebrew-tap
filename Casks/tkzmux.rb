cask "tkzmux" do
  version "1.2.13"
  sha256 "e7f6196229bec2e6d45f3f5c5234957685d6b40e479270ecc03d310408d9030b"

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
