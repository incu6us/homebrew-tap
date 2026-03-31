# typed: false
# frozen_string_literal: true

class McpSwitch < Formula
  desc "CLI tool to toggle MCP servers for Claude Code"
  homepage "https://github.com/incu6us/mcp-switch"
  version "1.0.3"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.3/mcp-switch-x86_64-apple-darwin.tar.gz"
      sha256 "9a56ce57b3da7512fc1bb070f5cc9013cbd8b552220fbf420d337e4383febfd0"
    end
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.3/mcp-switch-aarch64-apple-darwin.tar.gz"
      sha256 "6873392b901da2452615ebec91198693d36bd6040a27da0467ee585c5444852d"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.3/mcp-switch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef188b0e3182642179336404f365e3d5fdafbf7093c626a4484b0824ad25415d"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.3/mcp-switch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46b31982bee01fa1347021a75fdf5895fa9737f645f30ada9fef7236ec29cf98"
    end
  end

  def install
    bin.install "mcp-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-switch --version")
  end
end
