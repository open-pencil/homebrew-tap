cask "open-pencil" do
  version "0.7.0"

  on_arm do
    sha256 "265444e009b6068c3947ea644b3e5a841ea4894a6d9cf31e00d0772c9d887b5e"
    url "https://github.com/open-pencil/open-pencil/releases/download/v#{version}/OpenPencil_aarch64.app.tar.gz"
  end

  on_intel do
    sha256 "885c14cd301593fa321099d76e56bbf62aa658a3183a8844f33a2cf478c69c80"
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
