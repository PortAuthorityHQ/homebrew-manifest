class Manifest < Formula
  desc "Cryptographic receipts for AI agent tool calls"
  homepage "https://github.com/PortAuthorityHQ/manifest"
  version "0.2.5"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-apple-darwin.tar.gz"
      sha256 "f5269d51972e13612ed4bf5cdc8cf26beb0d9761fc15f8f17f5b4c5dff9be995"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-apple-darwin.tar.gz"
      sha256 "0ca6977539ccd3dab051dacc1ff83a8be6e5644131351cd4940b372e9cd1ccfd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42bd38b79c1818024cdd6619ee5e6c529a89badbd6a336febf1ac9625db041fc"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b416a3f69cbbe716e609dbd7e9e549f8c0dda9a99d1af9804c233f22954dc812"
    end
  end

  def install
    bin.install "manifest"
  end

  test do
    system "#{bin}/manifest", "--version"
  end
end
