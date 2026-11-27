class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.42"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.42/ravel_v0.1.0-beta.42_darwin_arm64.tar.gz"
      sha256 "cc982511b0601648ce65569f0e052a2116c6bea2b72f3920acef840e50f233bc"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.42/ravel_v0.1.0-beta.42_darwin_amd64.tar.gz"
      sha256 "3dcd5fea52546b4061f170bf9717c9df81fde893e611d267c9e7fc6f29d34459"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.42/ravel_v0.1.0-beta.42_linux_arm64.tar.gz"
      sha256 "006606c21ff2824fb077f4794d67c367c3a47419dcbc8f9b6502a79463c2ccf3"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.42/ravel_v0.1.0-beta.42_linux_amd64.tar.gz"
      sha256 "93de17ae48b2bd1864502e5882673b5254884f96c140169963931195b5553aeb"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
