class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.7"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.7/ravel_v0.1.0-beta.7_darwin_arm64.tar.gz"
      sha256 "14584a48b1c4c40ac413d441ed81e7cf44ea0df094e5d1e26d470323a0a1d806"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.7/ravel_v0.1.0-beta.7_darwin_amd64.tar.gz"
      sha256 "5fb06e1ad97d86b8df058f3ab98b44e411322d5cfca99bfc479c8850c062e3ca"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.7/ravel_v0.1.0-beta.7_linux_arm64.tar.gz"
      sha256 "e737059eb142d92c94c9e5cbe120d25b6c295c91a278e90f9d26f111081d6dc6"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.7/ravel_v0.1.0-beta.7_linux_amd64.tar.gz"
      sha256 "190d887e86cc26a761850c84014f8030da7d668edc4f766f8f3bbd6f800bd3e0"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
