class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.30"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.30/ravel_v0.1.0-beta.30_darwin_arm64.tar.gz"
      sha256 "6c25319a68547136dbb58e6460cfd76fb9c1e74250333d985cb283cc1720b0ba"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.30/ravel_v0.1.0-beta.30_darwin_amd64.tar.gz"
      sha256 "9de0c5dc636ef5019afee41d8927fc76d48115a3155768b56fadc6bb2d36375b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.30/ravel_v0.1.0-beta.30_linux_arm64.tar.gz"
      sha256 "0d24e49c464a37e524b3336c36284137d3f9130c8016014e1b4bce62b101840e"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.30/ravel_v0.1.0-beta.30_linux_amd64.tar.gz"
      sha256 "7315acb3c77fed39b4b6322879372ed6940f7874816cb53a860ade76ee330992"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
