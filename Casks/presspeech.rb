cask "presspeech" do
  version "0.3.0"
  sha256 "12552e5b42141239957a56a5971b20e553019c57989a8d57d4858b44d650ed15"

  url "https://github.com/rcourtman/presspeech/releases/download/v#{version}/Presspeech.zip"
  name "Presspeech"
  desc "Push-to-talk dictation with on-device speech recognition"
  homepage "https://github.com/rcourtman/presspeech"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Presspeech.app"

  # Migration paths keep uninstall complete for installations predating
  # the Presspeech bundle-identity change.
  zap trash: [
    "~/Library/Caches/com.local.parakey",
    "~/Library/Caches/com.local.presspeech",
    "~/Library/HTTPStorages/com.local.parakey",
    "~/Library/HTTPStorages/com.local.presspeech",
    "~/Library/Logs/Parakey.log",
    "~/Library/Logs/Presspeech.log",
    "~/Library/Preferences/com.local.parakey.plist",
    "~/Library/Preferences/com.local.presspeech.plist",
  ]
end
