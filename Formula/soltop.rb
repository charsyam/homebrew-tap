class Soltop < Formula
  desc "Apple Silicon GPU/CPU/power monitor (no sudo, no powermetrics)"
  homepage "https://github.com/charsyam/soltop"
  url "https://github.com/charsyam/soltop/archive/refs/tags/v0.5.5.tar.gz"
  sha256 "f01b7785ce7ee316f91560d33a00cc576278d9409aa98c0681402f370fcef7f4"
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
