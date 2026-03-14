cask "kobitab" do
  arch arm: "arm64", intel: "x64"

  version "0.1.13"
  sha256 arm: "dee1071571648a5d6283053c277cd28a09795e08b2341751332132d103182fd2", intel: "9dc06b479f92eea08f1e151e4f1756157090857b46759a88b22098eb2ec9117f"

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
