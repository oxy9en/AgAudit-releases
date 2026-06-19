class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.7"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.7/agaudit-macos-arm64.tar.gz"
  sha256 "3834bf2f277bcf81135f3270e44a69bad4a04c59dffba71733874eddcd246067"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end