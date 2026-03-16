cask "kobitab" do
  arch arm: "arm64", intel: "x64"

  version "0.1.20"
  sha256 arm: "f592715433a307f12ebdd070424e808b44f8a12900039fdef80511dfeae649f2", intel: "238aae5f2ffd014f05b442e2c59e30cc2cd1d2d53ce12aa77a1a254a013c26df"

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
