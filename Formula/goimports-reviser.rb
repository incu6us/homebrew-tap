# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "3.4.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.4.0/goimports-reviser_3.4.0_darwin_arm64.tar.gz"
      sha256 "82905849c64e21d5f84ad04ae7cf42e7335ee36232869e29e8714b59b47d2adc"

      def install
        bin.install "goimports-reviser"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.4.0/goimports-reviser_3.4.0_darwin_amd64.tar.gz"
      sha256 "26ec83c6d2d619e48544044c487ff9ed2191d8acf999467ac0d83d1605d6ec48"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.4.0/goimports-reviser_3.4.0_linux_amd64.tar.gz"
      sha256 "980cb89cb3dbc0dde9d50943a7e7eef0cb8cd91bedc2244c948d0bdf20a39a9f"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
