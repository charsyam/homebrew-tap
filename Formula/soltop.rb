class Soltop < Formula
  desc "Apple Silicon GPU/CPU/power monitor (no sudo, no powermetrics)"
  homepage "https://github.com/charsyam/soltop"
  url "https://github.com/charsyam/soltop/archive/refs/tags/v0.6.2.tar.gz"
  sha256 "a9416561e8797f76b6f6882287227c11521709a3c495cf3b490609a09631a1f0"
  license "MIT"
  head "https://github.com/charsyam/soltop.git", branch: "main"

  depends_on arch: :arm64
  depends_on :macos

  def install
    bin.install "soltop.py" => "soltop"
  end

  test do
    assert_match "soltop", shell_output("#{bin}/soltop --version")
  end
end
