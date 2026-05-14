cask "parakey" do
  version "0.2.6"
  sha256 "83397264f240bc764e607ce38871d85d8bda4a312511044d2619530c34cf4cc8"

  url "https://github.com/rcourtman/parakey/releases/download/v#{version}/Parakey.zip"
  name "Parakey"
  desc "Push-to-talk dictation with on-device speech recognition"
  homepage "https://github.com/rcourtman/parakey"

  depends_on macos: ">= :tahoe"
  depends_on arch: :arm64

  app "Parakey.app"

  zap trash: [
    "~/Library/Caches/com.local.parakey",
    "~/Library/HTTPStorages/com.local.parakey",
    "~/Library/Logs/Parakey.log",
    "~/Library/Preferences/com.local.parakey.plist",
  ]
end
