cask "kobitab" do
  arch arm: "arm64", intel: "x64"

  version "0.1.18"
  sha256 arm: "5a71004c8df7a46c9cd29ffe4d38c83d879c4b48564b4231292a738140f9bdd1", intel: "7afe7bbeac4fce5dfd9c19057a2cc0e521fb827bc7d8423c2ed1b7d22f957e65"

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
