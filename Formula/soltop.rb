class Soltop < Formula
  desc "Apple Silicon GPU/CPU/power monitor (no sudo, no powermetrics)"
  homepage "https://github.com/charsyam/soltop"
  url "https://github.com/charsyam/soltop/archive/refs/tags/v0.10.0.tar.gz"
  sha256 "9e49aeed42f1f97801b378690525fb1fd18d6828255694efb3d7fd305d0831a5"
  license "MIT"
  head "https://github.com/charsyam/soltop.git", branch: "main"

  depends_on arch: :arm64
  depends_on :macos

  def install
    # soltop is a package, but it ships as ONE file: zipapp (stdlib since 3.5)
    # packs src/ into a single executable. It stores source rather than
    # bytecode, so the Python that builds it need not be the one that runs it.
    system "python3", "-m", "zipapp", "src",
           "-o", "soltop", "-p", "/usr/bin/env python3", "-c"
    chmod 0755, "soltop"
    bin.install "soltop"
  end

  test do
    assert_match "soltop", shell_output("#{bin}/soltop --version")
    # The dashboard needs real IOReport channels, which a build sandbox may not
    # have; --version is the one thing that must work everywhere.
  end
end
