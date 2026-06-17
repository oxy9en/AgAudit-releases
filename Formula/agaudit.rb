class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.6"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.6/agaudit-macos-arm64.tar.gz"
  sha256 "9933bf97db821287bbee2e82a97df3cf615da073bf6978b55d7496bb3f221c75"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end