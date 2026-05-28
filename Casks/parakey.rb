cask "parakey" do
  version "0.2.14"
  sha256 "f83e04e946ad73e1ab03cf8cde1227560d50ee08b8723565efeeda3aaa82d1b5"

  url "https://github.com/rcourtman/parakey/releases/download/v#{version}/Parakey.zip"
  name "Parakey"
  desc "Push-to-talk dictation with on-device speech recognition"
  homepage "https://github.com/rcourtman/parakey"

  depends_on macos: ">= :sonoma"
  depends_on arch: :arm64

  app "Parakey.app"

  zap trash: [
    "~/Library/Caches/com.local.parakey",
    "~/Library/HTTPStorages/com.local.parakey",
    "~/Library/Logs/Parakey.log",
    "~/Library/Preferences/com.local.parakey.plist",
  ]
end
