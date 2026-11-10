class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.12"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.12/ravel_v0.1.0-beta.12_darwin_arm64.tar.gz"
      sha256 "241d7cfd12e972f8775e1487d64408ff2b8fda60b0260ea81a6a768b14f99e15"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.12/ravel_v0.1.0-beta.12_darwin_amd64.tar.gz"
      sha256 "5efeb26c9789709d62f8eb3972215709b54d6ffcc9fbabae58cf926c3487dcea"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.12/ravel_v0.1.0-beta.12_linux_arm64.tar.gz"
      sha256 "5d1e3fa5a7fe81d81dd55b3402169d33ce6619886e327d216a4a8b050687c694"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.12/ravel_v0.1.0-beta.12_linux_amd64.tar.gz"
      sha256 "be904a81f69efc44d98a4b8ffa1fedca6fe6e44c7d5eaa4af11d6e6347e16f44"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
