class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.17"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.17/ravel_v0.1.0-beta.17_darwin_arm64.tar.gz"
      sha256 "b1ff1c0ba2d8c08b73c3ffa576f541fd5e495a62cad2fb6cef6a188153c17d8f"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.17/ravel_v0.1.0-beta.17_darwin_amd64.tar.gz"
      sha256 "93deb3d94fe73f994980bb4f0cf5473dc910902851668cef2de0c9546d470b02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.17/ravel_v0.1.0-beta.17_linux_arm64.tar.gz"
      sha256 "f4257ab0fa25552f57bb93c1985e7697b4dbb334c36e9c1d2b767504b364bd5e"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.17/ravel_v0.1.0-beta.17_linux_amd64.tar.gz"
      sha256 "6cdec8e59c18731306a98b3d6d9357d19b18592535c6904d44026ed3b6df5df0"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
