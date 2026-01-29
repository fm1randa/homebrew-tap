class ClaudeUsage < Formula
  desc "Check your Claude Plan usage statistics via the Anthropic OAuth API"
  homepage "https://github.com/fm1randa/claude-usage"
  url "https://github.com/fm1randa/claude-usage/archive/refs/tags/v1.0.0.tar.gz"
  sha256 "b2522ceb724a86bfff3fc18e25c6be6a92fad6f9371ad3a2a0c9e92fad083536"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-usage --help")
  end
end
