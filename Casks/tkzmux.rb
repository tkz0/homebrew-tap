cask "tkzmux" do
  version "0.8.0"
  sha256 "8b8feed8de33928e0f22512cdd0263ae8fce4d0c6185199a49ac5826afc348ed"

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
