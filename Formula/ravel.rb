class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.28"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.28/ravel_v0.1.0-beta.28_darwin_arm64.tar.gz"
      sha256 "abd36e69e8b3ff0ccc892a6cea6d35e722a98448c8c89a48a64b3a977e518dc2"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.28/ravel_v0.1.0-beta.28_darwin_amd64.tar.gz"
      sha256 "bfc9ee9510a125a101956a0f73d531ff8d6f736e3ddb744aedb8fae904ff0db0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.28/ravel_v0.1.0-beta.28_linux_arm64.tar.gz"
      sha256 "0dcee8b879bd68d6324d137a60f35bb1cb6d1b958112916e2cfec7c782deee87"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.28/ravel_v0.1.0-beta.28_linux_amd64.tar.gz"
      sha256 "c808468c2ff92cf88c2f9d686b61623a050f12123be76bc4a9e7c569d043d5f0"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
