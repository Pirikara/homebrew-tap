class Ravel < Formula
  desc "Generate evidence-backed SBOMs from projects and container images"
  homepage "https://github.com/Pirikara/Ravel"
  version "0.1.0-beta.45"
  license "Apache-2.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.45/ravel_v0.1.0-beta.45_darwin_arm64.tar.gz"
      sha256 "6f1fd1611f68b7fc3fb1bd371863109777a8a61f02f8364d72acc08604896a88"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.45/ravel_v0.1.0-beta.45_darwin_amd64.tar.gz"
      sha256 "81f25b29f94b62c904450c76f821c1dedeebf7b56e7b0be76982bf1c94195529"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.45/ravel_v0.1.0-beta.45_linux_arm64.tar.gz"
      sha256 "57e031e4edddda90654500caf3167d877a21505ce8b61c4c48c581eaa3dca3ce"
    else
      url "https://github.com/Pirikara/Ravel/releases/download/v0.1.0-beta.45/ravel_v0.1.0-beta.45_linux_amd64.tar.gz"
      sha256 "78f655406b69b86ebfa4bb5783907b3062fe3ff51e084044724090ff9c968239"
    end
  end

  def install
    bin.install "ravel"
  end

  test do
    assert_match "ravel v#{version}", shell_output("#{bin}/ravel version")
  end
end
