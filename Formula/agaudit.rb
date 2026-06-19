class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.11"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.11/agaudit-macos-arm64.tar.gz"
  sha256 "5aef51c9ae8d4c1b723e61f071260012de24d5ace439080039f38aae7c126400"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end