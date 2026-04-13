cask "ornata" do
  if Hardware::CPU.arm?
    dmg_arch = "aarch64"
    folder_arch = "aarch64"
  else
    dmg_arch = "x64"
    folder_arch = "x86_64"
  end

  version "0.2.3"
  sha256 arm:   "d1659a4ffe25776d3ce039070ad70cf53934796167d8cf50c51dae3d905dbdcf",
         intel: "3d3606743ba750ebcaf6d62879918ccdb12a2e3f31e1a132bc9a3c7ef1781fea"

  url "https://github.com/08820048/Ornata/releases/download/v#{version}/Ornata_#{version}_#{dmg_arch}.dmg",
      verified: "github.com/08820048/Ornata/releases/download/"
  name "Ornata"
  desc "Focused Markdown editor for writing and knowledge management"
  homepage "https://github.com/08820048/Ornata"

  auto_updates true

  app "Ornata.app"
end
