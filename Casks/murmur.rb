cask "murmur" do
  version "0.1.1"
  sha256 "d3d656e893c021324ce7b46dee1ada506d4ce78463fb187f3a47899af7a1e6ee"

  url "https://github.com/harrydayexe/murmur/releases/download/v#{version}/Murmur-#{version}.zip"
  name "Murmur"
  desc "Menu bar voice notes transcribed on-device and saved as Markdown"
  homepage "https://github.com/harrydayexe/murmur"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :golden_gate

  app "Murmur.app"

  uninstall quit: "dev.harryday.murmur"

  zap trash: [
    "~/Library/Application Scripts/dev.harryday.murmur",
    "~/Library/Containers/dev.harryday.murmur",
  ]
end
