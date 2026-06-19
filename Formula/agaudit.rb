class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.8"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.8/agaudit-macos-arm64.tar.gz"
  sha256 "102203497cca75ae4cdac1f9b6e8056487eb92ed51405dcc1cb265f3dd5f8a22"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end