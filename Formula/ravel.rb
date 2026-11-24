class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.22"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.22/ravel_v0.1.0-beta.22_darwin_arm64.tar.gz"
      sha256 "2ba0e2e89eda719e17086f4e9a48b7834893d2849d6e22f030ddebeae74f90da"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.22/ravel_v0.1.0-beta.22_darwin_amd64.tar.gz"
      sha256 "8f7c079a7823fcfc1c7fbefb9fc7cd2e9775022f58faf828d2eb77ba9c43b22c"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.22/ravel_v0.1.0-beta.22_linux_arm64.tar.gz"
      sha256 "7eff4b0b5688291212bb4c7c90dcf98785d89237d8fc54923a7446539b0c635d"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.22/ravel_v0.1.0-beta.22_linux_amd64.tar.gz"
      sha256 "e26e2cae14170cc34b538d37629cc95c3be45b543e15ccb37b67917085649eeb"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
