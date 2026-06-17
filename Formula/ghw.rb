class Ghw < Formula
  desc "Intent-aware Git CLI — wraps gh with provenance tracking"
  homepage "https://github.com/surajsrivastav/gitwhy"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_darwin_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_darwin_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_linux_arm64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_linux_amd64.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "ghw"
  end
end
