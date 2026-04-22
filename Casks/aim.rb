cask "aim" do
  version "0.1.6"
  sha256 "4c667a8fbe20d955c4e06a6a9a51a21b3f90a0d26e40c74b9a9a5b6ea830222f"

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
