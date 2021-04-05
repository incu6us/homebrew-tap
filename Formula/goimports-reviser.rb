# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "2.3.5"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/incu6us/goimports-reviser/releases/download/v2.3.5/goimports-reviser_2.3.5_darwin_amd64.tar.gz"
    sha256 "17509c6cb9a8d9e524b992fc5348bfdaa0ba449ff78465928ce67d9fab0ef7ec"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/incu6us/goimports-reviser/releases/download/v2.3.5/goimports-reviser_2.3.5_linux_amd64.tar.gz"
    sha256 "d8a246ba33161ba66cfca2f195a79c317604018c388f85f1b0b3885a15ae9bab"
  end

  def install
    bin.install "goimports-reviser"
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
