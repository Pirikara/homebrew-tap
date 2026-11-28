class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.1"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.1/ravel_v0.1.1_darwin_arm64.tar.gz"
      sha256 "cb5814e1eff9ff9205aee2c4093daada7a6ee13285b03a24f15ef6afd808a96f"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.1/ravel_v0.1.1_darwin_amd64.tar.gz"
      sha256 "bdb2c25d3850beb0c575ecc83b46b2c619d574f79b7daa8e852202d64418e6e3"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.1/ravel_v0.1.1_linux_arm64.tar.gz"
      sha256 "8520b6acb4e8cbe0eba6f66a3abd31e19113432ac04f658772067340fd4c0f49"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.1/ravel_v0.1.1_linux_amd64.tar.gz"
      sha256 "d1572afc8a1f4af5af03ab4de4199f3c444e5d4e426ff169b3ebd69369e8d516"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
