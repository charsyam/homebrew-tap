class Soltop < Formula
  desc "Apple Silicon GPU/CPU/power monitor (no sudo, no powermetrics)"
  homepage "https://github.com/charsyam/soltop"
  url "https://github.com/charsyam/soltop/archive/refs/tags/v0.7.3.tar.gz"
  sha256 "d343baf17eb272fbbdbf1d9a8fb522a013c422fd2bb5b8bf0469393a212a9836"
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
