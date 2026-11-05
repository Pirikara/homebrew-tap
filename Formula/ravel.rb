class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.11"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.11/ravel_v0.1.0-beta.11_darwin_arm64.tar.gz"
      sha256 "eb70c2ea35bd0112d1b6b10fd6a70027cde45cc1ed528e00f0dc7d442ebe45b3"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.11/ravel_v0.1.0-beta.11_darwin_amd64.tar.gz"
      sha256 "a697fe4a87ffd9075ef9523359601aa9f0f3f8ad393588591ff650f2f1ff58f5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.11/ravel_v0.1.0-beta.11_linux_arm64.tar.gz"
      sha256 "912d3de40885dac6764cc193acd90e0650dc016c877e936922e71d386a1397c9"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.11/ravel_v0.1.0-beta.11_linux_amd64.tar.gz"
      sha256 "a2ea6f0f4d3550448d3385f97595389e2a3c4a301b0ae110ce67b823650cbc04"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
