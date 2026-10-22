class Browserscale < Formula
  desc "Build browser automations by chatting with an agent"
  homepage "https://browserscale.cloud"
  version "0.4.6"

  on_arm do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_arm64.tar.gz"
    sha256 "e6a7f5ca2f038b734b2dca7d3782c447dd69b8df8a9abade7c0825d9fcef1dea"
  end
  on_intel do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_amd64.tar.gz"
    sha256 "ac73e17d5731e7aa0142dc1802cb2c03b3b2c470d2dd0c40f60f1d6244d2b2c6"
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
