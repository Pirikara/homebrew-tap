class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.10"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.10/ravel_v0.1.0-beta.10_darwin_arm64.tar.gz"
      sha256 "a6800521173cb9e6822e759560bc991a23293fbcf63ea4f8c2fb2cf4d48b9fc7"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.10/ravel_v0.1.0-beta.10_darwin_amd64.tar.gz"
      sha256 "af06f74f34c2a569842721eef6ce827968799ffdee53b49f628c8544f3352611"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.10/ravel_v0.1.0-beta.10_linux_arm64.tar.gz"
      sha256 "63b4ad81ff4eaccef558e0b5b368c60bc0da8c4f30b78c550f14b0e0b2b42eb2"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.10/ravel_v0.1.0-beta.10_linux_amd64.tar.gz"
      sha256 "58dbb38afd274ab941d8c8dd67355dc60dfef9c0fe9e3be35085f08302e78d79"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
