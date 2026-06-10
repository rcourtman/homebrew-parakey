cask "parakey" do
  version "0.2.16"
  sha256 "13d23e7d424313eb6c4750629f4fb2725b41f2380f3c771834ef000d803d670e"

  url "https://github.com/rcourtman/parakey/releases/download/v#{version}/Parakey.zip"
  name "Parakey"
  desc "Push-to-talk dictation with on-device speech recognition"
  homepage "https://github.com/rcourtman/parakey"

  depends_on macos: :sonoma
  depends_on arch: :arm64

  app "Parakey.app"

  zap trash: [
    "~/Library/Caches/com.local.parakey",
    "~/Library/HTTPStorages/com.local.parakey",
    "~/Library/Logs/Parakey.log",
    "~/Library/Preferences/com.local.parakey.plist",
  ]
end
