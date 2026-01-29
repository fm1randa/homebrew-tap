class ClaudeUsage < Formula
  desc "Check your Claude Plan usage statistics via the Anthropic OAuth API"
  homepage "https://github.com/fm1randa/claude-usage"
  url "https://github.com/fm1randa/claude-usage/archive/refs/tags/v1.2.0.tar.gz"
  sha256 "e1e8e484a6dc56fc7773e620f05b3a381cb83ef6bd87bbc20061a321c2f949db"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-usage --help")
  end
end
