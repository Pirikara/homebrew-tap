class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.40"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.40/ravel_v0.1.0-beta.40_darwin_arm64.tar.gz"
      sha256 "b80444cd85a07b1fe7b87a32ec61723ea3615e32100df609b2c5dfac2bda7f97"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.40/ravel_v0.1.0-beta.40_darwin_amd64.tar.gz"
      sha256 "7a4c1fefe1371be7dbfedf7cb8022b38c307df76e9da845f2c55cc28445610ba"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.40/ravel_v0.1.0-beta.40_linux_arm64.tar.gz"
      sha256 "1092d4c589d742a2c6fcd20066626b7762b1f5c49cb61870f7586d3eeebf8a88"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.40/ravel_v0.1.0-beta.40_linux_amd64.tar.gz"
      sha256 "ea06cb5e46134966de838ee157398ebe77452489afcfe5afed8aebab91a89895"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
