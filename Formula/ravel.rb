class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.18"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.18/ravel_v0.1.0-beta.18_darwin_arm64.tar.gz"
      sha256 "3a8b837ec2ba22eb751acaf262fd1b40f559e2fd785af5bca11099430ed4f65b"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.18/ravel_v0.1.0-beta.18_darwin_amd64.tar.gz"
      sha256 "167018fd03c01cc18dec62a07430f05eb62b4f454e95ee3dcb9d290cdbad5191"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.18/ravel_v0.1.0-beta.18_linux_arm64.tar.gz"
      sha256 "5c51fc0363f9f4a4c50d6e959d5ee6db198dd05f62567da1143519d0342bdd8e"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.18/ravel_v0.1.0-beta.18_linux_amd64.tar.gz"
      sha256 "2f78e6ef43d598582769adf772322f44f9eede7549da93fa31877ab46ec58d0e"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
