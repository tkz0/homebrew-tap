cask "tkzmux" do
  version "0.7.0"
  sha256 "3518cc3f66f662466c2ee0edf90dd55959768a0072788cf21e87a2255fd60596"

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
