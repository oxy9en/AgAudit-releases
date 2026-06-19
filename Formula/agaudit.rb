class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.10"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.10/agaudit-macos-arm64.tar.gz"
  sha256 "85a246859677528dba5854f046f83d93d41405459c508f5503ebc452ad48a277"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end