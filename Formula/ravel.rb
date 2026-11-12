class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.19"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.19/ravel_v0.1.0-beta.19_darwin_arm64.tar.gz"
      sha256 "4f558fa7bebf25185f5cf88876ffde9b191d42b56733d98328f7a160670099a7"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.19/ravel_v0.1.0-beta.19_darwin_amd64.tar.gz"
      sha256 "1c5cf8ee805d01f82e4491518d0c08ca7c988dbcb71c67c4552a466fb86d5e0a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.19/ravel_v0.1.0-beta.19_linux_arm64.tar.gz"
      sha256 "ebb95bd3cda58b57538785204679044ada53003f2d9be9b71b6060b556b2f00a"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.19/ravel_v0.1.0-beta.19_linux_amd64.tar.gz"
      sha256 "384d241d7f954fd39da71052b3c638e26e7a80a6a89b38ba0820b3a7675df723"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
