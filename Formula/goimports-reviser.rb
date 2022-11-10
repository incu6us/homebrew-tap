# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "3.2.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.2.1/goimports-reviser_3.2.1_darwin_amd64.tar.gz"
      sha256 "a290e867b73901a8d386df5289ae071c5df5450c9ded055d94697ab3b3649e50"

      def install
        bin.install "goimports-reviser"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.2.1/goimports-reviser_3.2.1_darwin_arm64.tar.gz"
      sha256 "c91144a10e6fb49d48480dfb85f320b2c08045812042774c20945e38bee92123"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.2.1/goimports-reviser_3.2.1_linux_amd64.tar.gz"
      sha256 "d021b2e4f528ede49e8b99fc62100c6f7250de1b764a98461056e20d6f5ba098"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
