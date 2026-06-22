class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.14"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.14/agaudit-macos-arm64.tar.gz"
  sha256 "6467813acb0b42912e8fc05a469c8d5f3ba18f5427dd4e5c0974a328179fbcab"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end