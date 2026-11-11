class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.16"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.16/ravel_v0.1.0-beta.16_darwin_arm64.tar.gz"
      sha256 "f4e3c2d9d3d252ab3c9b242160465a30b6e1772087e4be26037c0c031142d9db"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.16/ravel_v0.1.0-beta.16_darwin_amd64.tar.gz"
      sha256 "5c28b4db57d9f6312f7edd7ca253b946fb9053a897dab4b7bbc1aeb5b5dd5ae6"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.16/ravel_v0.1.0-beta.16_linux_arm64.tar.gz"
      sha256 "40e8b6aa68a892b9dd02edebfeac9e74d47831a5d9284cb2cdbefc9bcc76c305"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.16/ravel_v0.1.0-beta.16_linux_amd64.tar.gz"
      sha256 "9ca8df497af8e084943da5dac2f345556b9881d0403453db34cb83b72022c7f9"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
