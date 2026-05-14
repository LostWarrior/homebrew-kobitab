cask "kobitab" do
  version "0.2.5"
  sha256 "366f2fccfa10a6c373d71f12d944d458ec0681c3b6575e3ac76aa570b3934bfd"

  url "https://downloads.kobitab.com/releases/v#{version}/KobiTab-#{version}-mac-universal.dmg",
      verified: "downloads.kobitab.com/releases/"
  name "KobiTab"
  desc "Privacy-first local bookmark manager"
  homepage "https://kobitab.com"

  app "KobiTab.app"

  caveats <<~EOS
    If macOS blocks first launch, run:
      xattr -dr com.apple.quarantine /Applications/KobiTab.app
  EOS
end
