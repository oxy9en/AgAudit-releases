class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.9"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.9/agaudit-macos-arm64.tar.gz"
  sha256 "60d05fdb800b0f889ac39b683509e98079eb1f72ab620585bb786e633b3148aa"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end