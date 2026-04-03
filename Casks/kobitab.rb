cask "kobitab" do
  version "0.2.1"
  sha256 "fa75005ea179a3d34b4bd6245f9a82bb66b0380da8b737b3bcf3798c644c48bc"

  url "https://github.com/LostWarrior/Kobitab/releases/download/v#{version}/KobiTab-#{version}-mac-universal.dmg",
      verified: "github.com/LostWarrior/Kobitab/releases/download/"
  name "KobiTab"
  desc "Privacy-first local bookmark manager"
  homepage "https://kobitab.com"

  app "KobiTab.app"

  caveats <<~EOS
    If macOS blocks first launch, run:
      xattr -dr com.apple.quarantine /Applications/KobiTab.app
  EOS
end
