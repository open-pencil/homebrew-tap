cask "open-pencil" do
  version "0.11.2"

  on_arm do
    sha256 "662cfbd43d79ff0cf192f28aac07d42bee27677e3020e791b638ca016d12cbef"
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "d3ac2f400434e748719c1fb1981a16d8421f8cd02abde6d446c56c8d6caf6645"
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
