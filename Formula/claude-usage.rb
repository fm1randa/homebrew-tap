class ClaudeUsage < Formula
  desc "Check your Claude Plan usage statistics via the Anthropic OAuth API"
  homepage "https://github.com/fm1randa/claude-usage"
  url "https://github.com/fm1randa/claude-usage/archive/refs/tags/v1.3.0.tar.gz"
  sha256 "c0fc014ce2b40e3a793c7c00693141a21807e5dde1f204e96c053bdf5c4c036f"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-usage --help")
  end
end
