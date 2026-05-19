cask "open-pencil" do
  version "0.12.1"

  on_arm do
    sha256 "a46f98732838ee4fa90e711e90d5cdd36f0f481d68f4d8cf446d930dcef8dadd"
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "9dfbf76a4f660c6348667832899d66dbe8d1bbe870f391bd3225bf85061ce152"
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
