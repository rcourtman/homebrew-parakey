cask "parakey" do
  version "0.2.10"
  sha256 "42504d6cc11cdbcbd9a3071cfddb22050700fdc3862d36062fedd208f484dd92"

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
