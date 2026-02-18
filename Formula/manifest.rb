class Manifest < Formula
  desc "Cryptographic receipts for AI agent tool calls"
  homepage "https://github.com/PortAuthorityHQ/manifest"
  version "0.1.0"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-apple-darwin.tar.gz"
      sha256 "784b741c99a5e5b7af9564b73d0ddd97a6b58e1fcb7004157a9b35709be8baec"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-apple-darwin.tar.gz"
      sha256 "fbfd91b50a1e10dac6bbb54c2e8e8ca3516527166243e901e5a921d96845527c"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9af06fd97da4ebfa475d247359382b71464e45260b61cc126131d02bc4871107"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "fcee76f66b39f36b037f31c01c9b92dcac4e57489ad978756157b8b8fd5a9f7c"
    end
  end

  def install
    bin.install "manifest"
  end

  test do
    system "#{bin}/manifest", "--version"
  end
end
