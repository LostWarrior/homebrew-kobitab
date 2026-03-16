cask "kobitab" do
  arch arm: "arm64", intel: "x64"

  version "0.1.21"
  sha256 arm: "d8aefdac0421aa79c8687cb93eead6c57ce8746b3d25b8f887f312b22d1de095", intel: "6d90cb34e53b7a194939810c211de0be965a74736607f42471d1c4297444acfb"

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
