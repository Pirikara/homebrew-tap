class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.29"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.29/ravel_v0.1.0-beta.29_darwin_arm64.tar.gz"
      sha256 "e4ca26f9a67f27ab36a3089eec6dd407cbd93ca5e0900ed6e26a60f61834f076"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.29/ravel_v0.1.0-beta.29_darwin_amd64.tar.gz"
      sha256 "3d86a783f4848abf405fb2e56cb04f2968fcc3363ebe48206caf47622abf3046"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.29/ravel_v0.1.0-beta.29_linux_arm64.tar.gz"
      sha256 "c8d91e7123051b4257e91943bd6a8329b621a8fda4485a823e800722dba40b3d"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.29/ravel_v0.1.0-beta.29_linux_amd64.tar.gz"
      sha256 "2d2dbb48858adbb1fdfc76000f7d56298cb26022fdbca20ef167f004157ee952"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
