class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.32"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.32/ravel_v0.1.0-beta.32_darwin_arm64.tar.gz"
      sha256 "bd0e68ec288c6b0bbdb63c9dc657399bcb4ae7bd9a256b12a30f0f991a157971"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.32/ravel_v0.1.0-beta.32_darwin_amd64.tar.gz"
      sha256 "2e00dfbbc81b018505b95e31bcc4758d885bb358ab2de2462692182b131dd3c0"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.32/ravel_v0.1.0-beta.32_linux_arm64.tar.gz"
      sha256 "200e29b23b0ab973e0173f364be7e183e6977d1b3985c76f3a80fccfb9f7ad56"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.32/ravel_v0.1.0-beta.32_linux_amd64.tar.gz"
      sha256 "e6810a94f011b12ed12a8df308cad4111dda4cf10577a246727e4da1a6be85c6"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
