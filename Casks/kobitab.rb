cask "kobitab" do
  version "1.1.0"
  sha256 "aa084b97f51df20cdb9fcf9444107f62dd469a9a7bc4ab2225fb84d2990581e8"

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
