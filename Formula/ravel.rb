class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.27"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.27/ravel_v0.1.0-beta.27_darwin_arm64.tar.gz"
      sha256 "786d152d607ab94f09411068fbe9b64d9bcb474f62ef8d6e7fd936373bbe7ff0"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.27/ravel_v0.1.0-beta.27_darwin_amd64.tar.gz"
      sha256 "d48a126629847d4ac7f7d2fd0c07bf5b39bbe777d7bb73e61a56e44dfd9dced8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.27/ravel_v0.1.0-beta.27_linux_arm64.tar.gz"
      sha256 "02332e3b69699972669dd43131f72fc2e76cc3c7fee509c1268df619bebe739b"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.27/ravel_v0.1.0-beta.27_linux_amd64.tar.gz"
      sha256 "a51501182ea6a76a5d4f6bcaaffaf5056b9f93039c5e3a654aaa26ce57dcfc5a"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
