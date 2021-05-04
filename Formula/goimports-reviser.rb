# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "2.4.1"
  bottle :unneeded

  if OS.mac? && Hardware::CPU.intel?
    url "https://github.com/incu6us/goimports-reviser/releases/download/v2.4.1/goimports-reviser_2.4.1_darwin_amd64.tar.gz"
    sha256 "07359e4aec077ce6a1cb41ca64b61699467403679e5cd4e71080e95fab30c40d"
  end
  if OS.linux? && Hardware::CPU.intel?
    url "https://github.com/incu6us/goimports-reviser/releases/download/v2.4.1/goimports-reviser_2.4.1_linux_amd64.tar.gz"
    sha256 "2f9b63cee189a787ff670831c711e931a93ff79e84c70b38b9e42e3da68adf73"
  end

  def install
    bin.install "goimports-reviser"
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
