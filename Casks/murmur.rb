cask "murmur" do
  version "0.1.2"
  sha256 "04d4b94b48d4115a08f026863960cf6f86b60bff217d4612d41d5808c817acb0"

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
