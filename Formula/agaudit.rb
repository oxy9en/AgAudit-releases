class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.5"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.5/agaudit-macos-arm64.tar.gz"
  sha256 "9ae8514dab79589eabf40de3f0f4399f7bb2af9810052dfbb1f5ab58b0de2d57"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end