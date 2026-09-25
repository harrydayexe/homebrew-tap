cask "murmur" do
  version "0.1.0"
  sha256 "f8b33239fd868008ee4c8801b681df6378cec4265def9999e8098b4c5c79e999"

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
