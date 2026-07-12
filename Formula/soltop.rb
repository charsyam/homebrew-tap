class Soltop < Formula
  desc "Apple Silicon GPU/CPU/power monitor (no sudo, no powermetrics)"
  homepage "https://github.com/charsyam/soltop"
  url "https://github.com/charsyam/soltop/archive/refs/tags/v0.5.4.tar.gz"
  sha256 "e8d70be4254e0858498a181bab59a5e63ff60e66ae4dd5607d3e4861a540375e"
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
