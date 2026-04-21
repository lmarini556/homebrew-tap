cask "aim" do
  version "0.1.1"
  sha256 "202f9c60f9e2c88ec7554df3379b652b48ba4a858b73521bd9690a5b2b6c275a"

  url "https://github.com/lmarini556/aim/releases/download/v#{version}/AIM.app.tar.gz",
      verified: "github.com/lmarini556/aim/"
  name "AIM"
  desc "Agent Instances Manager for Claude Code"
  homepage "https://github.com/lmarini556/aim"

  depends_on macos: ">= :ventura"
  depends_on arch: :arm64

  app "AIM.app"

  zap trash: [
    "~/.claude-instances-ui",
    "~/Library/Application Support/com.aim.agent-instances-manager",
    "~/Library/Caches/com.aim.agent-instances-manager",
    "~/Library/Preferences/com.aim.agent-instances-manager.plist",
    "~/Library/WebKit/com.aim.agent-instances-manager",
  ]
end
