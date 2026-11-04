class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.2/ravel_v0.1.0-beta.2_darwin_arm64.tar.gz"
      sha256 "fc0f430d583a41c5f78ff1dfa956e825029ab04de1dd81cf4cf0057206391d30"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.2/ravel_v0.1.0-beta.2_darwin_amd64.tar.gz"
      sha256 "86137cfac3dda7e58b69415080e9149253015e8f170dab8b692ba2ed174f4271"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.2/ravel_v0.1.0-beta.2_linux_arm64.tar.gz"
      sha256 "6ecd12aaea4919e2d7b010d2bc1119f898bd1bb4af9e94b0d34796452e642a78"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.2/ravel_v0.1.0-beta.2_linux_amd64.tar.gz"
      sha256 "acbd2cff1e9647998c33bf467177989596b5d6863101bc79d9e0458d237ae8ce"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
