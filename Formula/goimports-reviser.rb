# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "2.3.0"
  bottle :unneeded

  if OS.mac?
    url "https://github.com/incu6us/goimports-reviser/releases/download/v2.3.0/goimports-reviser_2.3.0_darwin_amd64.tar.gz"
    sha256 "13ceb10e71be0b015f55cadd295ab3283aaa1a57565ab09c0ddb6f07e337f536"
  elsif OS.linux?
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v2.3.0/goimports-reviser_2.3.0_linux_amd64.tar.gz"
      sha256 "f95a0c74f78754c0fcddf3d883aa3e2e367adbe44354135b6456fe0af173b2e6"
    end
  end

  def install
    bin.install "goimports-reviser"
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
