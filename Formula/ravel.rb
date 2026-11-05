class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.6"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.6/ravel_v0.1.0-beta.6_darwin_arm64.tar.gz"
      sha256 "945bd08cb2eaf884cb4502dcd50608bdca2f2dcea50e9dcdb34180a4bb102a0e"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.6/ravel_v0.1.0-beta.6_darwin_amd64.tar.gz"
      sha256 "032ce8210337a5e94b5228521d0cbef7d42b9d91d573aa9d810e2a773877836a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.6/ravel_v0.1.0-beta.6_linux_arm64.tar.gz"
      sha256 "51a970de5157ceab0b4f655e77bd8177dbb457e7a98ddb0959e1a903a4f5cfae"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.6/ravel_v0.1.0-beta.6_linux_amd64.tar.gz"
      sha256 "104343703f603118ac5eed4bba49a29da1a53ef773a43a8ab2e790c675ba1bfc"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
