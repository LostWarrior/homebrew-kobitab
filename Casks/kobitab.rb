cask "kobitab" do
  version "0.2.7"
  sha256 "d5f22f355763af562780d8f025fd02c0331cb76643554bf17dbcf705e8b186c2"

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
