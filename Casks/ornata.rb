cask "ornata" do
  if Hardware::CPU.arm?
    dmg_arch = "aarch64"
    folder_arch = "aarch64"
  else
    dmg_arch = "x64"
    folder_arch = "x86_64"
  end

  version "0.2.3-1"
  sha256 arm:   "193cd96ae4cbdca696811da8c7c98a862d78bfc7ab7b38ffa050db7c92558c10",
         intel: "3c77ddcdb49f781a95f93f3123c0bf0d9b7582f7b724bf73267f258bf6435850"

  url "https://github.com/08820048/Ornata/releases/download/v#{version}/Ornata_#{version}_#{dmg_arch}.dmg",
      verified: "github.com/08820048/Ornata/releases/download/"
  name "Ornata"
  desc "Focused Markdown editor for writing and knowledge management"
  homepage "https://github.com/08820048/Ornata"

  auto_updates true

  app "Ornata.app"
end
