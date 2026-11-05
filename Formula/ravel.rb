class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.9"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.9/ravel_v0.1.0-beta.9_darwin_arm64.tar.gz"
      sha256 "4752fd25dc35a22a87228fb217bb10c54a3e5be423a60b4b95a7d602ccf4f0ec"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.9/ravel_v0.1.0-beta.9_darwin_amd64.tar.gz"
      sha256 "1552e52c42237b94fd949168f3c7eca6581035eb0754f2f1804004d04432abde"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.9/ravel_v0.1.0-beta.9_linux_arm64.tar.gz"
      sha256 "8b8e6fb2d05fb4f86bf10d4d3d7950047c71a1a502b926fad598e842c767615f"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.9/ravel_v0.1.0-beta.9_linux_amd64.tar.gz"
      sha256 "56ca8007b878585b855045593f92b470fbeb4cc3b838cc4d38b4adcb12ce80da"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
