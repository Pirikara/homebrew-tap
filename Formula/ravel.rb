class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.2"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.2/ravel_v0.1.2_darwin_arm64.tar.gz"
      sha256 "dd08a4d1dbd70b38fee8dd757120d9b8280e3e7bbf103ac0ef36b808108bc9e2"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.2/ravel_v0.1.2_darwin_amd64.tar.gz"
      sha256 "88f280ffe3aefbe1b605884402c4458007fc599be2c9f1ef5ce81744cbd48998"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.2/ravel_v0.1.2_linux_arm64.tar.gz"
      sha256 "ee0a542ca8b1616a303bfa4e874b26369dc85f53ef138241ba3f4836b8395926"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.2/ravel_v0.1.2_linux_amd64.tar.gz"
      sha256 "745c7245b80817e9cd80747964f49ce51ed48a2f28c21cc1d2a66e937d2eca9c"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
