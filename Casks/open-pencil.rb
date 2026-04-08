cask "open-pencil" do
  version "0.11.4"

  on_arm do
    sha256 "db555087f4b7d397c1b2198886f45ce45a08b26a8a2edbfef94303fb5fa12e77"
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "ec79b009320f17a718fb3163d7326d890519571ad429dccf72f9a87d98f0ba2d"
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
