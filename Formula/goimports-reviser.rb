# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "3.8.2"

  on_macos do
    on_intel do
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.8.2/goimports-reviser_3.8.2_darwin_amd64.tar.gz"
      sha256 "1ac446b1cbfb5209aaa23234ffc0f8dc3e18bcd2e352ab5d736dd878c6c07a6d"

      def install
        bin.install "goimports-reviser"
      end
    end
    on_arm do
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.8.2/goimports-reviser_3.8.2_darwin_arm64.tar.gz"
      sha256 "be7a8e9ebca8154e0e35ab9e108f739c7fc32b213c2fd1230b2fe8f88f07a3e9"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/incu6us/goimports-reviser/releases/download/v3.8.2/goimports-reviser_3.8.2_linux_amd64.tar.gz"
        sha256 "fd99334450dbf2b4e5fe65a042742eda0ae646d38d4b536d7dda0d2184b741f6"

        def install
          bin.install "goimports-reviser"
        end
      end
    end
  end

  test do
    system "#{bin}/goimports-reviser -version"
  end
end
