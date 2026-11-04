class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.1/ravel_v0.1.0-beta.1_darwin_arm64.tar.gz"
      sha256 "7fdb313bb454bc0e451155817e20596e1af756b76ca3708b3ad626d9b8970ea2"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.1/ravel_v0.1.0-beta.1_darwin_amd64.tar.gz"
      sha256 "0efcd66d589a2f2218343751cfa81a5e30d2ea0f86a0309cd2253975e7dd6920"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.1/ravel_v0.1.0-beta.1_linux_arm64.tar.gz"
      sha256 "e6c5575947842c9cb0aeecffacd1acd3afb25f947e7bf9b0d420f40a25bf7a9d"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.1/ravel_v0.1.0-beta.1_linux_amd64.tar.gz"
      sha256 "1fa3b845a9784f6556ff4027f1b21e736f428f47916bd7441700f4e167762cfb"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
