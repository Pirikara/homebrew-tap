class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.24"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.24/ravel_v0.1.0-beta.24_darwin_arm64.tar.gz"
      sha256 "b2e4afede964b44dd133fa1db88e3228b4dc12b07f0328083c5e94025dac7993"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.24/ravel_v0.1.0-beta.24_darwin_amd64.tar.gz"
      sha256 "3e344387c0c55643db9f5e3fe1af9e3fc1746323c9547da8501e9c20c0104fc7"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.24/ravel_v0.1.0-beta.24_linux_arm64.tar.gz"
      sha256 "dbca88d2d2cbd78eec6767b42593600668b4aaba5a1babcd1dc2ddced9ef0484"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.24/ravel_v0.1.0-beta.24_linux_amd64.tar.gz"
      sha256 "298081980967b54ef4c925295535b265518e939820b7a8f9b2cb968b69a61376"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
