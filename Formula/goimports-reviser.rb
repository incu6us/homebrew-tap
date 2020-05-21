# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "0.1.3"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/incu6us/goimports-reviser/releases/download/v0.1.3/goimports-reviser_0.1.3_darwin_amd64.tar.gz"
    sha256 "0251e6c2b5634358ccf537caf6bdf8ba035c0c83deaeff9528cb5c07afe1a986"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v0.1.3/goimports-reviser_0.1.3_linux_amd64.tar.gz"
      sha256 "cd4973057ed6e74b19b14cbbe66ad3929624ddae058318c3ee8b98c1ed7b6e99"
    end
  end

  def install
    bin.install "goimports-reviser"
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
