class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.5"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.5/ravel_v0.1.0-beta.5_darwin_arm64.tar.gz"
      sha256 "d96096c5a8700c5815c42a15c20d380b00dd98b7edd3e6e7ff9935682bd8b80e"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.5/ravel_v0.1.0-beta.5_darwin_amd64.tar.gz"
      sha256 "4e9aa57d23371b0db695f77a4f9e4d5c50dd35c842806aa4e7cc50bae866ac12"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.5/ravel_v0.1.0-beta.5_linux_arm64.tar.gz"
      sha256 "0316241021d56b033878f926b5e746046a2ee1fbf80ac4b573dfab89f3c6adf0"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.5/ravel_v0.1.0-beta.5_linux_amd64.tar.gz"
      sha256 "f52b4001ea058fb6efcb1e809672769c35e953a2a1c457cd11764cf3ebbedccc"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
