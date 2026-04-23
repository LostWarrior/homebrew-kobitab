cask "kobitab" do
  version "0.2.3"
  sha256 "7d348c835ab205200cf6a306e417b3ca939137d19e84a99f8305b15ebc2e939d"

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
