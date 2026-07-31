class Beproof < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.15"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.15/beproof-macos-arm64.tar.gz"
  sha256 "0c3f70352d0cfeae2a121335cdfa3930c9208f4abf7e251c1dc00f0b00a175f0"

  depends_on macos: :sonoma

  def install
    bin.install "beproof"
  end

  test do
    output = shell_output("#{bin}/beproof 2>&1", 1)
    assert_match "Usage:", output
  end
end