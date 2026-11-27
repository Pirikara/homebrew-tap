class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.35"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.35/ravel_v0.1.0-beta.35_darwin_arm64.tar.gz"
      sha256 "4277ffd34b35bc91fd56a2a506b480a90d3a7d7a0a65cea20f1265fa66d2721c"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.35/ravel_v0.1.0-beta.35_darwin_amd64.tar.gz"
      sha256 "e5e17ae6618c29786ac24c310bfbc121835b5574e6251883b987f7dfe85ff200"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.35/ravel_v0.1.0-beta.35_linux_arm64.tar.gz"
      sha256 "72bdf6bb4cf5ae6da24297c790993a6c894e19eaedddc4c5017720dc0893c704"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.35/ravel_v0.1.0-beta.35_linux_amd64.tar.gz"
      sha256 "ac616e30932d5c836236959cdaf3452deaed28a2f3ce93008ba1e14bcc753a6d"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
