cask "parakey" do
  version "0.2.5"
  sha256 "71ea5586220b4ae89b2f6433284ecd4ad3891caca06cbc2cc2aa08975866a465"

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
