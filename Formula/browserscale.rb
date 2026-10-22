class Browserscale < Formula
  desc "Build browser automations by chatting with an agent"
  homepage "https://browserscale.cloud"
  version "0.4.5"

  on_arm do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_arm64.tar.gz"
    sha256 "358dad6f1f9e3c4766e6a86f8bc64d70a44b3832d887aeb2dccb94c6d9fc1646"
  end
  on_intel do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_amd64.tar.gz"
    sha256 "d9c79f522ad47cf02df0260731130ce650d1c82da27361e6d83ef998200bb55e"
  end

  depends_on :macos

  def install
    # The command finds Studio's bundle next to itself, through the symlink.
    libexec.install "browserscale", "browserscale studio.app"
    bin.install_symlink libexec/"browserscale"
  end

  test do
    system bin/"browserscale", "version"
  end
end
