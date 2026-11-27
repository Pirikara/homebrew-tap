class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.37"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.37/ravel_v0.1.0-beta.37_darwin_arm64.tar.gz"
      sha256 "8efe9c667ff5f04bea027711cc9ce4500944458183b9b713045877f069092d9d"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.37/ravel_v0.1.0-beta.37_darwin_amd64.tar.gz"
      sha256 "a3010c161b5e7538c230e9edc10660f3ea8b32216bc94f650228c64fe22b520a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.37/ravel_v0.1.0-beta.37_linux_arm64.tar.gz"
      sha256 "fb1118b2a7e575841577c382ca8f69b7b371106eceaf7732a6e6bb638ea6f739"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.37/ravel_v0.1.0-beta.37_linux_amd64.tar.gz"
      sha256 "e2598889f8a5bf6aa516bb4529c605622cbec4aff096f462ba03a7cc3be83b5b"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
