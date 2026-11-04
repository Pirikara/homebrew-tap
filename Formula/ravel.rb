class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.3"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.3/ravel_v0.1.0-beta.3_darwin_arm64.tar.gz"
      sha256 "cd4b6685fd755d559b416a03b1b72d4bb0fcfab85ff96db2e6af18d74eaeb2b9"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.3/ravel_v0.1.0-beta.3_darwin_amd64.tar.gz"
      sha256 "590045ed799c2d000498e46d6f7d9e4166fbd3d3f2b9c914c4f3f558b7f53822"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.3/ravel_v0.1.0-beta.3_linux_arm64.tar.gz"
      sha256 "92e3317df7aaee7293fb49ee43fdd20ae078fc69968988aa66cfe4925acf3948"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.3/ravel_v0.1.0-beta.3_linux_amd64.tar.gz"
      sha256 "2468a2ca64625367e8e1efbfe6539196bbfea616f17eb15542d2778d59971fdb"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
