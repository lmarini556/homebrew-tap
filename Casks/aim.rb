cask "aim" do
  version "0.1.0"
  sha256 "b0dc7ded711cc2b5b8e608913d07fb590e25343d25aaafbae15a4c7bea04fa2a"

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
