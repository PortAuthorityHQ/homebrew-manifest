class Manifest < Formula
  desc "Cryptographic receipts for AI agent tool calls"
  homepage "https://github.com/PortAuthorityHQ/manifest"
  version "0.2.9"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-apple-darwin.tar.gz"
      sha256 "cdd9ec2008757c57031723bc110079c3c26860541ed2a010de87c6b8f69e1634"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-apple-darwin.tar.gz"
      sha256 "9eb46b30b427c4cc182f5d57edcf10316926273dc7c01883a7adbd5601e99c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f0bb7ca198fc447f744f0d20681fa9de909268d44e3f887f61d8b5f76bfb46d"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "34968236f2f8870de1f1bb78c29d2b6938afa75c11dabfe2cca48b7271c2723c"
    end
  end

  def install
    bin.install "manifest"
  end

  test do
    system "#{bin}/manifest", "--version"
  end
end
