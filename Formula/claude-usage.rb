class ClaudeUsage < Formula
  desc "Check your Claude Plan usage statistics via the Anthropic OAuth API"
  homepage "https://github.com/fm1randa/claude-usage"
  url "https://github.com/fm1randa/claude-usage/archive/refs/tags/v1.1.0.tar.gz"
  sha256 "1b35aea1a139dced7c66d8930eaca3d7a2a5daac0ec78e358457e974e29db95d"
  license "MIT"

  depends_on "jq"

  def install
    bin.install "claude-usage"
  end

  test do
    assert_match "Usage:", shell_output("#{bin}/claude-usage --help")
  end
end
