cask "open-pencil" do
  version "0.13.2"

  on_arm do
    sha256 "943a366b699da340a0358ab6bec4b6fcc151869169d97dc41dbbddc21eb282f2"
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "5cc8990b434fe29b9ce84394037603b3b696100715fa815d8c5243a63f967553"
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_x64.app.tar.gz"
  end

  name "OpenPencil"
  desc "Open-source design editor compatible with Figma"
  homepage "https://openpencil.dev"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true

  app "OpenPencil.app"

  zap trash: [
    "~/Library/Application Support/net.dannote.open-pencil",
    "~/Library/Caches/net.dannote.open-pencil",
    "~/Library/Preferences/net.dannote.open-pencil.plist",
    "~/Library/Saved Application State/net.dannote.open-pencil.savedState",
  ]
end
