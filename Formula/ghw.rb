class Ghw < Formula
  desc "Intent-aware Git CLI — wraps gh with provenance tracking"
  homepage "https://github.com/surajsrivastav/gitwhy"
  license "MIT"
  version "0.1.7"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.7/gitwhy_darwin_arm64.tar.gz"
      sha256 "9793e772da9d3fe425ff71b126ec15abf3d18c30914cb58e0ead044f05fbf367"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.7/gitwhy_darwin_amd64.tar.gz"
      sha256 "9d2417022977884ad8941770c825a2df50f952c144f1b3177bae098a2d826ddc"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.7/gitwhy_linux_arm64.tar.gz"
      sha256 "9a71bd871f565fdcf7dd0b49cf5244bce7ec003025760a8e69caaf6648c042e0"
    else
      url "https://github.com/surajsrivastav/gitwhy/releases/download/v0.1.7/gitwhy_linux_amd64.tar.gz"
      sha256 "ed39d776475972c94098caa045703d4e00b0b154e78cb2c0919b34a75f42e241"
    end
  end

  def install
    bin.install "ghw"
  end
end
