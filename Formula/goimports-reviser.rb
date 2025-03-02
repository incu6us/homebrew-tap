# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GoimportsReviser < Formula
  desc "Right imports sorting & code formatting tool"
  homepage "https://github.com/incu6us/goimports-reviser"
  version "3.9.1"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.9.1/goimports-reviser_3.9.1_darwin_amd64.tar.gz"
      sha256 "98dfd4127a90d7ee22cf42b059a551cf93faab114c72acb4363fa444b9c9bdce"

      def install
        bin.install "goimports-reviser"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/goimports-reviser/releases/download/v3.9.1/goimports-reviser_3.9.1_darwin_arm64.tar.gz"
      sha256 "2dc70136ac7fcaeabe77678ba6d7461932e9deab5debc33d83303dbbcc76427f"

      def install
        bin.install "goimports-reviser"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/incu6us/goimports-reviser/releases/download/v3.9.1/goimports-reviser_3.9.1_linux_amd64.tar.gz"
        sha256 "538850d760776a76a353d5fefc513acf9817ad0ecdfe834954c64451f427b129"

        def install
          bin.install "goimports-reviser"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/incu6us/goimports-reviser/releases/download/v3.9.1/goimports-reviser_3.9.1_linux_arm64.tar.gz"
        sha256 "ca7414f9c9b8d1b7ba9ded88a0acf8239073cbb66d7d612d814dd4e858e9627c"

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
