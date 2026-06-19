class Yuc < Formula
  desc "YAML Unicode Check - find sketchy unicode characters in YAML configs"
  homepage "https://github.com/harshadixit12/yuc"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/harshadixit12/yuc/releases/download/v#{version}/yuc_darwin_arm64.tar.gz"
      sha256 "PLACEHOLDER_ARM64"
    end
    on_intel do
      url "https://github.com/harshadixit12/yuc/releases/download/v#{version}/yuc_darwin_amd64.tar.gz"
      sha256 "PLACEHOLDER_AMD64"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/harshadixit12/yuc/releases/download/v#{version}/yuc_linux_arm64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_ARM64"
    end
    on_intel do
      url "https://github.com/harshadixit12/yuc/releases/download/v#{version}/yuc_linux_amd64.tar.gz"
      sha256 "PLACEHOLDER_LINUX_AMD64"
    end
  end

  def install
    bin.install "yuc"
  end

  test do
    system "#{bin}/yuc", "--version"
  end
end
