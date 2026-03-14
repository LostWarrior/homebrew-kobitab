cask "kobitab" do
  arch arm: "arm64", intel: "x64"

  version "0.1.19"
  sha256 arm: "000016d1941233dfaa000b93bba471196fd50cc5a0f6f7779a091ea5bcbafdf9", intel: "9008427afcb19591241b4708580fed2d1089bb6f0b71e29fae25a2736bc8334f"

  url "https://github.com/LostWarrior/Kobitab/releases/download/v#{version}/KobiTab-#{version}-mac-#{arch}.dmg",
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
