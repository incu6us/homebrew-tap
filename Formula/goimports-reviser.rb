# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "2.5.0"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v2.5.0/goimports-reviser_2.5.0_darwin_amd64.tar.gz"
      sha256 "104e4b2b43b9792ab12ed8503d3f1da465ac4d177a1bd1e78b370e893655dd1b"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v2.5.0/goimports-reviser_2.5.0_linux_amd64.tar.gz"
      sha256 "7944f1d48233f1584ff68dfaab60e0786dc268664a44e67c398969e86f1bd784"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
