cask "kobitab" do
  version "2.1.0"
  sha256 "4fe14ce5a91e4cac5367e6f7f06be93c609a12405ac0d06048ae14f93888f064"

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
