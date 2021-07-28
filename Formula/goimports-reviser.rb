# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "2.4.3"
  bottle :unneeded

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v2.4.3/goimports-reviser_2.4.3_darwin_amd64.tar.gz"
      sha256 "20c22b749d4be48718fe3481f7f6cfe6a74b4ea3e73b94504089a6886d474e6f"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v2.4.3/goimports-reviser_2.4.3_linux_amd64.tar.gz"
      sha256 "8a33d92c5b60e7056743294eb4481e0b79da555508bb657dd4b591d8d721824d"
    end
  end

  def install
    bin.install "goimports-reviser"
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
