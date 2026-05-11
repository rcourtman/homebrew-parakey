cask "parakey" do
  version "0.1.6"
  sha256 "9fd48691afd12b15f902bf2d23b33bdb46fe849f875894400c5060563ccd8ff9"

  url "https://github.com/rcourtman/parakey/releases/download/v#{version}/Parakey.zip"
  name "Parakey"
  desc "Push-to-talk dictation with on-device speech recognition"
  homepage "https://github.com/rcourtman/parakey"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "Parakey.app"

  zap trash: [
    "~/Applications/Parakey.app",
    "~/Library/Caches/com.local.parakey",
    "~/Library/HTTPStorages/com.local.parakey",
    "~/Library/LaunchAgents/com.local.parakey.plist",
    "~/Library/Logs/Parakey.log",
    "~/Library/Logs/Parakey.log.1",
    "~/Library/Preferences/com.local.parakey.plist",
    "~/parakey/parakey.log",
    "~/parakey/parakey.log.1",
  ]
end
