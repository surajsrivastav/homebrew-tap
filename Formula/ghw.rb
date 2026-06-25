class Ghw < Formula
  desc "Intent-aware Git CLI — wraps gh with provenance tracking"
  homepage "https://github.com/surajsrivastav/gitwhy"
  license "MIT"
  version "0.1.6"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.6/gitwhy_darwin_arm64.tar.gz"
      sha256 "ce7060e8275da76f1736c3636e0b85ed059949ad65c509d3e5169a1e8b1174b4"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.6/gitwhy_darwin_amd64.tar.gz"
      sha256 "7d8c3105539ab9e2fbf8c10214ee4f0b29cba6f4deef224752ce42cb152b0080"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.6/gitwhy_linux_arm64.tar.gz"
      sha256 "ffdaa52118f7e574439f9894bbbc3e996ce9be0489ac90556f2f31abaebbd9f2"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.6/gitwhy_linux_amd64.tar.gz"
      sha256 "2d7772151eab5417b86f954a221e3bbd68640553354d4786f2800aba4516ab7e"
    end
  end

  def install
    bin.install "ghw"
  end
end
