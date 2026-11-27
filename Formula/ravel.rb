class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.36"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.36/ravel_v0.1.0-beta.36_darwin_arm64.tar.gz"
      sha256 "0cc699bded8303f91a8f88194a3653fc3a85d2a9ac0e2f3910f25191a02cc247"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.36/ravel_v0.1.0-beta.36_darwin_amd64.tar.gz"
      sha256 "197ef7ca5058ecef56371e8c130193988ced3e34f7d6c80869f9318df3616a0d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.36/ravel_v0.1.0-beta.36_linux_arm64.tar.gz"
      sha256 "c3a4a855421778de78d5279eba077406c483e925451b7ba31bb72f1a994f96ca"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.36/ravel_v0.1.0-beta.36_linux_amd64.tar.gz"
      sha256 "ac9a4cdcc03af76e11e43248495eb4aa27dcad3675d2018fa2dd00b0c9bd944e"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
