class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.15"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.15/ravel_v0.1.0-beta.15_darwin_arm64.tar.gz"
      sha256 "a97d1a334290d8a2d8f21bd6f2931a6f6fdf72a3381d4932104dac72a6b38c2b"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.15/ravel_v0.1.0-beta.15_darwin_amd64.tar.gz"
      sha256 "8b9ea86bc90e8d13b13cb44389751f44de71d08bf18b97d846bf03214f1b82e5"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.15/ravel_v0.1.0-beta.15_linux_arm64.tar.gz"
      sha256 "c5dcf268a998d37d5cdd9e9a6d3cbc3fdfa5a30404966f18a0739df980472fc4"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.15/ravel_v0.1.0-beta.15_linux_amd64.tar.gz"
      sha256 "9c4ce0ea2f354603c72c5b4ee2607803d28ae1f89bb18c81f260ddac3a56fa00"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
