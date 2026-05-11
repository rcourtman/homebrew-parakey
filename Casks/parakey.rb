cask "parakey" do
  version "0.1.4"
  sha256 "6a563acd65520f252f03a493a660cc3dc1857821e9360e4e6236df3e382c0ae9"

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
