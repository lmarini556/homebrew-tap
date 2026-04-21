cask "aim" do
  version "0.1.2"
  sha256 "af25ea293d83f834d9d40dae6f625c3498246f39fef460c0d7f80ce21425b65d"

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
