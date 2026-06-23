class Beproof < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.15"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.15/beproof-macos-arm64.tar.gz"
  sha256 "25d9b6746c5bb1ea7d465218924c6a2e227285661314025fa5c36b7766836664"

  depends_on macos: :sonoma

  def install
    bin.install "beproof"
  end

  test do
    output = shell_output("#{bin}/beproof 2>&1", 1)
    assert_match "Usage:", output
  end
end