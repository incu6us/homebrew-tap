# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "3.5.6"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.5.6/goimports-reviser_3.5.6_darwin_amd64.tar.gz"
      sha256 "9d5e7b8524ad44427fc01d8fe4fa8c03399f69cf1deb6531be90f0b9a82989e1"

      def install
        bin.install "goimports-reviser"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.5.6/goimports-reviser_3.5.6_darwin_arm64.tar.gz"
      sha256 "73a04ae4cd04f4fffb30c698e9c1e09e0063f2419a579563ddf51b98d2bcf56d"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.5.6/goimports-reviser_3.5.6_linux_amd64.tar.gz"
      sha256 "1ba606e5760b80635060c419671eac66e021b4d0cbcca2609562982087625d8b"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
