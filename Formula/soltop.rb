class Soltop < Formula
  desc "Apple Silicon GPU/CPU/power monitor (no sudo, no powermetrics)"
  homepage "https://github.com/charsyam/soltop"
  url "https://github.com/charsyam/soltop/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "a04c6ad0534a9d55830e8747a6b750807057c99291542af3ba38a9b03ff3f6f2"
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
