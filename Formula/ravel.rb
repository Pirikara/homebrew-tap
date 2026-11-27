class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.43"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.43/ravel_v0.1.0-beta.43_darwin_arm64.tar.gz"
      sha256 "b29ab4235398bc89217e3b17646baf73d744c7c248cd889f55d13a01c71693e7"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.43/ravel_v0.1.0-beta.43_darwin_amd64.tar.gz"
      sha256 "161e99e6d83892b790fa3e4dd870b1a7eb1f177bc49d344a20900b60aaf2dd66"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.43/ravel_v0.1.0-beta.43_linux_arm64.tar.gz"
      sha256 "9f43b9bffc58a1c83ad2a55617281c4ffd44766877273431c8c8e8ada34ec36c"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.43/ravel_v0.1.0-beta.43_linux_amd64.tar.gz"
      sha256 "2c272a548013d42987c755e71cc9b4a70ed4f2fba438da6aed100ec1460e73c5"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
