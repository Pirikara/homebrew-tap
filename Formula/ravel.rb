class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.14"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.14/ravel_v0.1.0-beta.14_darwin_arm64.tar.gz"
      sha256 "866aea53674da87baae49bd470c2cfbb907ee861415cd69fa3815ef4fdae51d6"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.14/ravel_v0.1.0-beta.14_darwin_amd64.tar.gz"
      sha256 "6e8789654401a4f80cdfd0666f6eebec0fc9e5c3f33a41a4a93c3eaceec2d0fd"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.14/ravel_v0.1.0-beta.14_linux_arm64.tar.gz"
      sha256 "88b124ae9dc233b2bc603d0a3484180cf8ac94eb38e9bd9155901a5cc3ba0e02"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.14/ravel_v0.1.0-beta.14_linux_amd64.tar.gz"
      sha256 "6ade273a904e4c221c487f32003a7f2b5b21e5a1426dfec6006bc2ca9cf4e749"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
