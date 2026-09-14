cask "tkzmux" do
  version "1.1.1"
  sha256 "0f33750d867488c05161b1d10e83d5f652a3888a193d71f9f134e1cc0d8c93e1"

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
