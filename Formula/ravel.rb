class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.4"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.4/ravel_v0.1.0-beta.4_darwin_arm64.tar.gz"
      sha256 "7b66f62a38c0448c3bd5c350ed42902bd49006b74bcba67c182ff6d61a93f854"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.4/ravel_v0.1.0-beta.4_darwin_amd64.tar.gz"
      sha256 "f9b867770f0f05fde2b8f44d001684b83a41aa3048d0500fc0bb763f3b96d923"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.4/ravel_v0.1.0-beta.4_linux_arm64.tar.gz"
      sha256 "3594b56cf9dae8bd38d0f509acc994ca6039f934c7f9097c85b36a8c5ba136cf"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.4/ravel_v0.1.0-beta.4_linux_amd64.tar.gz"
      sha256 "de584c165840ee416f5e42962332c254e121e606700b9a83a5ca593a63f52dc4"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
