class Browserscale < Formula
  desc "Build browser automations by chatting with an agent"
  homepage "https://browserscale.cloud"
  version "0.4.0-rc.3"

  on_arm do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_arm64.tar.gz"
    sha256 "44d52d0fc6e78efad1e543776fbf3047fc36f19a79df8ac5136aca62849445f6"
  end
  on_intel do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_amd64.tar.gz"
    sha256 "dfde23437eddeb23b0a183cbdfc5f57a034b56822802cc196008e332d48b3296"
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
