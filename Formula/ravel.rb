class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.31"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.31/ravel_v0.1.0-beta.31_darwin_arm64.tar.gz"
      sha256 "78d99f5bb35a4f487621a4c02895a1b272327b874aef147ce1aea9b3d0e8e135"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.31/ravel_v0.1.0-beta.31_darwin_amd64.tar.gz"
      sha256 "94ce5de5d8ab8ec72d0a48bcc23dd8c7ac43233503b2697aab76ee18803415fe"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.31/ravel_v0.1.0-beta.31_linux_arm64.tar.gz"
      sha256 "d03723ee1b5358fb43df0467ca4a5827efbbfae6aefd995ac7e392004d316f4e"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.31/ravel_v0.1.0-beta.31_linux_amd64.tar.gz"
      sha256 "8b1949a97759fa9c759d257dcaa0f0a9c2dfbc4715b857aa3b6cb1b637cf9cea"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
