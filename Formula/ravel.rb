class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.23"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.23/ravel_v0.1.0-beta.23_darwin_arm64.tar.gz"
      sha256 "98747661c8a46409360ffcceea488594d93ae28ebfa97bd08ff17be32f1fb263"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.23/ravel_v0.1.0-beta.23_darwin_amd64.tar.gz"
      sha256 "85d574a1c05a3c3f47b7587723ee3dbc4bec485690f35ab0bc38a5f08863c618"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.23/ravel_v0.1.0-beta.23_linux_arm64.tar.gz"
      sha256 "c07b1bb77a0028aa2290e3e2588ea8f9ecef3e903d7e5ea9b261bff72c52d5d4"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.23/ravel_v0.1.0-beta.23_linux_amd64.tar.gz"
      sha256 "1ac0d2b00581a5b653f876409e55ffc9b5043932ab48ae70600020a781e8cd05"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
