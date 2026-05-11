cask "parakey" do
  version "0.1.3"
  sha256 "f75cac59e2a02d008f8c87cf6c0f2560a41c90a2df5fa402110ac347d2f13423"

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
