class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.26"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.26/ravel_v0.1.0-beta.26_darwin_arm64.tar.gz"
      sha256 "18f97def6d6610d98d9cbb83456ebdba45b2c8deeb83893c5c6d915e0d290fd4"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.26/ravel_v0.1.0-beta.26_darwin_amd64.tar.gz"
      sha256 "af78fdfcfc81fb2f5ce596346fe2c32464b7c1269caf8945ed10e3d8b0149661"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.26/ravel_v0.1.0-beta.26_linux_arm64.tar.gz"
      sha256 "43c7ec9809e4034f07659258ef6d7b8cc211e0f82df90232aeb26cfd54294542"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.26/ravel_v0.1.0-beta.26_linux_amd64.tar.gz"
      sha256 "33457ebd507919e8824b2e5dd5bfa55fd31eb5d6c09c5158482fff0491b13048"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
