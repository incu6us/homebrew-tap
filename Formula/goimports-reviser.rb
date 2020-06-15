# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "0.1.6"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/incu6us/goimports-reviser/releases/download/v0.1.6/goimports-reviser_0.1.6_darwin_amd64.tar.gz"
    sha256 "bc1464aed44cfb9bc0ab71c0355ea44bfa1de9fa75ad7ecaf3c2cfe3dec0c678"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v0.1.6/goimports-reviser_0.1.6_linux_amd64.tar.gz"
      sha256 "2691665619ae2447864363d28d072f6ecb1fe0c5620005abcd5dd3dc6c3c92db"
    end
  end

  def install
    bin.install "goimports-reviser"
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
