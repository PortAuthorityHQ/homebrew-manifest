class Manifest < Formula
  desc "Cryptographic receipts for AI agent tool calls"
  homepage "https://github.com/PortAuthorityHQ/manifest"
  version "0.2.1"
  license "Apache-2.0"

  on_macos do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-apple-darwin.tar.gz"
      sha256 "e1af49b758e379f2da3902f02631a95c188cbbad4c8ae5b52af4c33d47f62d65"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-apple-darwin.tar.gz"
      sha256 "7f0187ce27fb87a9ba9d2eaa8557f60d2221579e4faba3e0b2179d2cce528e5f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7bead60d7fc7b4cc60eaf840775a660685724530ae38a953dd0bb8b8c83a50ca"
    end

    on_intel do
      url "https://github.com/PortAuthorityHQ/manifest/releases/download/v#{version}/manifest-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "698c76ac3c40e4892b27e4f90b8e2cddd3d65e61c5518f929f753e30df8c7529"
    end
  end

  def install
    bin.install "manifest"
  end

  test do
    system "#{bin}/manifest", "--version"
  end
end
