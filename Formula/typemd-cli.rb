# typed: false
# frozen_string_literal: true

class TypemdCli < Formula
  desc "A local-first CLI knowledge management tool"
  homepage "https://typemd.io"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/typemd/typemd/releases/download/v0.1.0/tmd-darwin-arm64.tar.gz"
      sha256 "ceac98009209ff9dfc64d02e2a8d9f0dff873effc4c730255911666a74c35608"
    end
    on_intel do
      url "https://github.com/typemd/typemd/releases/download/v0.1.0/tmd-darwin-x64.tar.gz"
      sha256 "4fd2e704f52785e7fad077e4fa1e8815c9ec556ae586af076816d99e67a6de24"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/typemd/typemd/releases/download/v0.1.0/tmd-linux-arm64.tar.gz"
      sha256 "37ef1fc227c8f127d4bd7e0f8e51a6fb933e7c293ae50b7776fc1129c6eb8a93"
    end
    on_intel do
      url "https://github.com/typemd/typemd/releases/download/v0.1.0/tmd-linux-x64.tar.gz"
      sha256 "38eb3138592218ffd8c09c2043a3836b211265aabc95c533cbe7c4a2a22b63b0"
    end
  end

  def install
    bin.install "tmd"
  end

  test do
    system "#{bin}/tmd", "--help"
  end
end
