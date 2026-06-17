class Ghw < Formula
  desc "Intent-aware Git CLI — wraps gh with provenance tracking"
  homepage "https://github.com/surajsrivastav/gitwhy"
  license "MIT"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_0.1.0_darwin_arm64.tar.gz"
      sha256 "09cb64f229f72c3cc22f7c275fc8701a32b559f671b8415fc9393661d2177d06"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_0.1.0_darwin_amd64.tar.gz"
      sha256 "883dd035e36f5394c2bfd7af7fd49c92d627e1e22b1cfc9f1aaf3654fe734abb"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_0.1.0_linux_arm64.tar.gz"
      sha256 "50a9dc8dd4a378e8a0000f34b0cc16446bab77076cfaf5bf9a09a6b4d4dbda2c"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.0/gitwhy_0.1.0_linux_amd64.tar.gz"
      sha256 "9736393a2fe049ce63186d643cfc6a1435ceb893207f9be85c1d5d230d92aeee"
    end
  end

  def install
    bin.install "ghw"
  end
end
