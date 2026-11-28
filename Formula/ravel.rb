class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0/ravel_v0.1.0_darwin_arm64.tar.gz"
      sha256 "d0e92a4dfc475a0a33d9d8e4a394c38754444bbeeef2c73bda91d61329d65469"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0/ravel_v0.1.0_darwin_amd64.tar.gz"
      sha256 "9de626de176c4da897c2cf49aca4303fff81c718fad02cf37933a1bdd90d65c8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0/ravel_v0.1.0_linux_arm64.tar.gz"
      sha256 "0994e29f460cd441a5e320389ddf1842db6c9b7812f3e39cb8da2df493ed9097"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0/ravel_v0.1.0_linux_amd64.tar.gz"
      sha256 "f5befb14e0f257902b61c1327cc6962140173c958dc97ef7c224edec05ca620b"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
