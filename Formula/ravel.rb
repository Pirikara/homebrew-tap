class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.8"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.8/ravel_v0.1.0-beta.8_darwin_arm64.tar.gz"
      sha256 "2b691434ca8caa93596494ccab046fa3fcc38642266cc3fbd348d09de5437e03"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.8/ravel_v0.1.0-beta.8_darwin_amd64.tar.gz"
      sha256 "834523602ccfb1e5c8eb10d5f4faa71403c6aa844496356c2e9e47cb79e7932a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.8/ravel_v0.1.0-beta.8_linux_arm64.tar.gz"
      sha256 "562a43e8bd34617174a6284e13137604e4c6b40d1819dac8e0c81a1dc7fdc746"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.8/ravel_v0.1.0-beta.8_linux_amd64.tar.gz"
      sha256 "f09f6ecdc4985c587a5af506f430e6857e8523564fabd0acf31a10191e330afc"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
