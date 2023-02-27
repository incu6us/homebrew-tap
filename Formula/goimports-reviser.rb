# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "3.3.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.3.1/goimports-reviser_3.3.1_darwin_amd64.tar.gz"
      sha256 "2345788ac8b0b0476ed50dfd068f4674b5f0316f8d40f8f0464acf213d9bd082"

      def install
        bin.install "goimports-reviser"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.3.1/goimports-reviser_3.3.1_darwin_arm64.tar.gz"
      sha256 "735fc537875a3fcce0be4fde90b362af75c670e166557b1561e82d9e8e4b7f3a"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.3.1/goimports-reviser_3.3.1_linux_amd64.tar.gz"
      sha256 "4935b78e56ffa7370bd4742efbce584b7be8de3ce360dd356bb10122789d1058"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
