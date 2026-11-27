class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.33"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.33/ravel_v0.1.0-beta.33_darwin_arm64.tar.gz"
      sha256 "acac6a69186e5a3d938040fce4341ad0b90ba641d0203476912520071d4a2a11"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.33/ravel_v0.1.0-beta.33_darwin_amd64.tar.gz"
      sha256 "167322e61df12cb463215c2cca63e5089d1a4382a8e3a0924966089ce5e8daa9"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.33/ravel_v0.1.0-beta.33_linux_arm64.tar.gz"
      sha256 "18ca47a33f7bce4f4906762fee5338829f600c347826985657a53bf42965400f"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.33/ravel_v0.1.0-beta.33_linux_amd64.tar.gz"
      sha256 "1840003e03ebbec67880b919b6364a813ed748875fc2c5ccbedc00ebac0c6b00"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
