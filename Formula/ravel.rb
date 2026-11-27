class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.38"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.38/ravel_v0.1.0-beta.38_darwin_arm64.tar.gz"
      sha256 "44fce48db8b527ee5fcba1182ed7f5bbaa20191dddbcdd022764c8cf172d0013"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.38/ravel_v0.1.0-beta.38_darwin_amd64.tar.gz"
      sha256 "abdf81da4c520a4f09e66fad105382b40204b69b360dc28a9ea6e7b03c9c28e2"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.38/ravel_v0.1.0-beta.38_linux_arm64.tar.gz"
      sha256 "9e1c39fbc19ac90284e4eb8d9535b93ddcef228d0999fa845d09379d0dcb3a70"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.38/ravel_v0.1.0-beta.38_linux_amd64.tar.gz"
      sha256 "223c7149bda0a25170e5808ea9c58167a6e59addf87b1f2d459064ce250779c3"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
