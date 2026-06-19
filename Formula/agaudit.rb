class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.12"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.12/agaudit-macos-arm64.tar.gz"
  sha256 "0899db2eb2eca8f74e962353369f55deae2b2f43f7e6f0c0e1cec597ec5a3566"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end