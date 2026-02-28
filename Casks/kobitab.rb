cask "kobitab" do
  arch arm: "arm64", intel: "x64"

  version "0.1.4"
  sha256 arm: "a60938356d02addcf3195d8ba9dee9ac4aaf12d1b423c6ca96ecaafc6ad9c9b6", intel: "b41d23a54d622a10da047b1b529915887785f2f916f4d0f2e4adcac2392b1864"

  url "https://github.com/LostWarrior/Kobitab/releases/download/v#{version}/KobiTab-#{version}-mac-#{arch}.dmg",
      verified: "github.com/LostWarrior/Kobitab/releases/download/"
  name "KobiTab"
  desc "Privacy-first local bookmark manager"
  homepage "https://kobitab.com"

  app "KobiTab.app"
end
