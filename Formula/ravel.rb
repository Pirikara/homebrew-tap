class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.44"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.44/ravel_v0.1.0-beta.44_darwin_arm64.tar.gz"
      sha256 "b6b13adbbc9be04d468184efe634d08ac85358ea7fac397873de2a62cdde89c4"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.44/ravel_v0.1.0-beta.44_darwin_amd64.tar.gz"
      sha256 "e7ab887d576baae6121b81f6024a2918e521a7e22c956a8bf214d1c157dbc58d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.44/ravel_v0.1.0-beta.44_linux_arm64.tar.gz"
      sha256 "8892d119a6ae4d5129f4503d5408529ae5c96d531d99f888675319791bbe8b82"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.44/ravel_v0.1.0-beta.44_linux_amd64.tar.gz"
      sha256 "de35b6a9e8d5b00ae7be6db7b67c3554ef8847184ca19466890efec781c2c1a9"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
