class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.4"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.4/agaudit-macos-arm64.tar.gz"
  sha256 "0218966f58d563e5883142007f1f15d444505a1dfb97263b2748d7b2b028f8f7"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end