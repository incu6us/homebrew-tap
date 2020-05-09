# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool (goimports on steroids)."
  homepage ""
  version "0.0.5"
  bottle :unneeded

  if OS.mac?
    url "http://github.com/incu6us/goimports-reviser/releases/download/v0.0.5/goimports-reviser_0.0.5_darwin_amd64.tar.gz"
    sha256 "b4929cdf83714a15be7c1ec10308aa4d0a4e33499662e3a472ec4064a9139e2d"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "http://github.com/incu6us/goimports-reviser/releases/download/v0.0.5/goimports-reviser_0.0.5_linux_amd64.tar.gz"
      sha256 "a591868743abb60a1aa104590b65b66b6eddb30569f73204567af3dde8a4321c"
    end
  end

  def install
    bin.install goimports-reviser
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
