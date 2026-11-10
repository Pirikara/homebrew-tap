class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.13"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.13/ravel_v0.1.0-beta.13_darwin_arm64.tar.gz"
      sha256 "a2d64169e87b36e0fd8d05ed61b412662bb337ec1ec75a5b876602678831c076"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.13/ravel_v0.1.0-beta.13_darwin_amd64.tar.gz"
      sha256 "22ddb87adf1c0c2c9e48252a03de187f737ce2e191607d236489948a2665446c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.13/ravel_v0.1.0-beta.13_linux_arm64.tar.gz"
      sha256 "77e59770e7b867e34f0a0d0b085286b4b6a478174b994a38a7b500ea0e32b458"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.13/ravel_v0.1.0-beta.13_linux_amd64.tar.gz"
      sha256 "14fbf7c087522e9856bf8ca5fd7c789ae56aee22d50eae48d74f028e8bada6a2"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
