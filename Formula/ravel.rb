class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.39"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.39/ravel_v0.1.0-beta.39_darwin_arm64.tar.gz"
      sha256 "500ee14b4764552be175d5ef3c7039b620dbf95c53b7c2fc18d812ff48c9a24a"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.39/ravel_v0.1.0-beta.39_darwin_amd64.tar.gz"
      sha256 "07d768a3ba90a4eb398851200f4b121bf3d85be008ee6256a0eb49e2885cb1f0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.39/ravel_v0.1.0-beta.39_linux_arm64.tar.gz"
      sha256 "cc8a76c22d607e986c4606ff1dcdac7122181684f3e0f95e54fedfc79b65c1a1"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.39/ravel_v0.1.0-beta.39_linux_amd64.tar.gz"
      sha256 "756b1e4f5cd7044d83c6235886a442f1f2e143547295d3c459d3bdc2f7ad5026"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
