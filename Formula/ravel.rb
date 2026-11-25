class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.25"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.25/ravel_v0.1.0-beta.25_darwin_arm64.tar.gz"
      sha256 "2b231aacbe30a12b45d578851078fedeab6d552a616d1270277114aff7dd34c6"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.25/ravel_v0.1.0-beta.25_darwin_amd64.tar.gz"
      sha256 "68717f57511300ad6208186a2c8f5ebc5a81d9bca13a1e09e0e78c2115162d02"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.25/ravel_v0.1.0-beta.25_linux_arm64.tar.gz"
      sha256 "1b304e45ac101d002112be73f8edad3c4198f4de1b193b00a2525cb82ffb0f5c"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.25/ravel_v0.1.0-beta.25_linux_amd64.tar.gz"
      sha256 "ab067be8b77c8101a39c17d0b5a339601a3ecee4056a62a9f974aef075de7f89"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
