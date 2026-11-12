class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.20"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.20/ravel_v0.1.0-beta.20_darwin_arm64.tar.gz"
      sha256 "c5b50f32790a52dd6d3e241acf0c6481c1cc536d4417ebade3fb983dee34873f"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.20/ravel_v0.1.0-beta.20_darwin_amd64.tar.gz"
      sha256 "e3b94bf7038c550b4d3800644809703f53ae68b42dda0e127feb4e0bdf9a3c1b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.20/ravel_v0.1.0-beta.20_linux_arm64.tar.gz"
      sha256 "40afc340fc476dfe63c7cac46242b8595da5b988c833bfd846c86e70443bae13"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.20/ravel_v0.1.0-beta.20_linux_amd64.tar.gz"
      sha256 "4efe23c455198dc735b5ae1d0e3b60035d6f82973a808b5618beedc7702d2ce4"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
