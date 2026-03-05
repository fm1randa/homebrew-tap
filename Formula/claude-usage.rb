class ClaudeUsage < Formula
  desc "Check your Claude Plan usage statistics via the Anthropic OAuth API"
  homepage "https://github.com/fm1randa/claude-usage"
  url "https://github.com/fm1randa/claude-usage/archive/refs/tags/v1.3.1.tar.gz"
  sha256 "9234390acf9f18d3a165172f19aacc8c9ed6f9b65e8f84b8ee6206a43f547575"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-usage --help")
  end
end
