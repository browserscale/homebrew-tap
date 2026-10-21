class Browserscale < Formula
  desc "Build browser automations by chatting with an agent"
  homepage "https://browserscale.cloud"
  version "0.4.2"

  on_arm do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_arm64.tar.gz"
    sha256 "35aa915e1fdef39ce3190b5d3cb623de8d31adc9b1e57dda6824699884d0377e"
  end
  on_intel do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_amd64.tar.gz"
    sha256 "46f7adf082362b180038242dc45e4ea877b86e2489fde74cf9ab6446147fa825"
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
