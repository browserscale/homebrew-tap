class Browserscale < Formula
  desc "Build browser automations by chatting with an agent"
  homepage "https://browserscale.cloud"
  version "0.5.0"

  on_arm do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_arm64.tar.gz"
    sha256 "4233d5a76d2959d6796424b5fc2e2a304a0a0e59302625710e744a0f41b8af91"
  end
  on_intel do
    url "https://github.com/browserscale/browserscale/releases/download/v#{version}/browserscale-studio_#{version}_darwin_amd64.tar.gz"
    sha256 "fa249a7c0692c9e2e2ea6cb32fbb33680d5b1bef0ba861c3b3bd4f18e1105bf4"
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
