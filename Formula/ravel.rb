class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.21"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.21/ravel_v0.1.0-beta.21_darwin_arm64.tar.gz"
      sha256 "91ad51ee2b9cd25d742822cadf462fa2f19867af3d9f48443906d85a78e6207b"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.21/ravel_v0.1.0-beta.21_darwin_amd64.tar.gz"
      sha256 "e80da7dd5e8f107f1f70a5ea1b51d95d0dfa797c17303d3e20476fea17186fce"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.21/ravel_v0.1.0-beta.21_linux_arm64.tar.gz"
      sha256 "632c16dfa2d664df26bfa4eb9c72a0cd51593914bc39c1f9b7fbcd2f2889c69f"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.21/ravel_v0.1.0-beta.21_linux_amd64.tar.gz"
      sha256 "ee4db5ba09a0ff3684b073341ca0fe2dca08aa14db68e94381750e97039e0fd1"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
