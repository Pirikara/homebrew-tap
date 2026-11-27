class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.34"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.34/ravel_v0.1.0-beta.34_darwin_arm64.tar.gz"
      sha256 "5b7e8e51c75dab10698efd3678631a9e9ff9707aebaed857f9476b6bb3ff1f96"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.34/ravel_v0.1.0-beta.34_darwin_amd64.tar.gz"
      sha256 "91558a3bb11a36b1c22132181bf4ead4bf75b4d826b756d4ba1ac26665e2f905"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.34/ravel_v0.1.0-beta.34_linux_arm64.tar.gz"
      sha256 "1601e21d7108ff9ff7bfd3c61f4a617a8c9d0500579001156a4d9277e57b074c"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.34/ravel_v0.1.0-beta.34_linux_amd64.tar.gz"
      sha256 "409169c51c7fb416b312a5ca101f4ff36ba74eac2f0dd7482c52fd2707c2d9b5"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
