class Agaudit < Formula
  desc "Local-first audit CLI for AI-agent usage (Apple Silicon)"
  homepage "https://github.com/oxy9en/AgAudit-releases"
  version "1.0.13"
  url "https://github.com/oxy9en/AgAudit-releases/releases/download/1.0.13/agaudit-macos-arm64.tar.gz"
  sha256 "1848073c7b13928345b6b23e8fd8b890d2af46599f040c98640a9915d8913788"

  depends_on macos: :sonoma

  def install
    bin.install "agaudit"
  end

  test do
    output = shell_output("#{bin}/agaudit 2>&1", 1)
    assert_match "Usage:", output
  end
end