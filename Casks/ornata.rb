cask "ornata" do
  if Hardware::CPU.arm?
    dmg_arch = "aarch64"
    folder_arch = "aarch64"
  else
    dmg_arch = "x64"
    folder_arch = "x86_64"
  end

  version "0.2.2"
  sha256 arm:   "f8c8d17e5cddfdf1b8a23ddd32f3ce98fd9cc7d24ae3b2f8b02a679b07561538",
         intel: "ed9506a25f79263924de85095dff796f093000e8310b523e258303f2deca7faf"

  url "https://download.ornata.app/updates/v1/darwin/#{folder_arch}/#{version}/Ornata_#{version}_#{dmg_arch}.dmg",
      verified: "download.ornata.app/updates/v1/"
  name "Ornata"
  desc "Focused Markdown editor for writing and knowledge management"
  homepage "https://github.com/08820048/Ornata"

  auto_updates true

  app "Ornata.app"
end
