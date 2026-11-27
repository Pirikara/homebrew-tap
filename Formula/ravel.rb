class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.41"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.41/ravel_v0.1.0-beta.41_darwin_arm64.tar.gz"
      sha256 "f6cf1fbd7a6bab7b419eabe50743c5cd28974e3a99b3a48ddbe99c4ee79bddde"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.41/ravel_v0.1.0-beta.41_darwin_amd64.tar.gz"
      sha256 "4bfcc518d98b9205413ec7fbf9f31f0866028c7c942dba90907daef37e847141"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.41/ravel_v0.1.0-beta.41_linux_arm64.tar.gz"
      sha256 "79f043b6481153bf8b61e047ef9f8908206b407451469cbc6a13c887cd972aa2"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.41/ravel_v0.1.0-beta.41_linux_amd64.tar.gz"
      sha256 "32be64b6f682ee1387656a48605eabb5fa20f130d01a3c63d88801e675de9c7d"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
