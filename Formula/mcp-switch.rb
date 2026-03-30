# typed: false
# frozen_string_literal: true

class McpSwitch < Formula
  desc "CLI tool to toggle MCP servers for Claude Code"
  homepage "https://github.com/incu6us/mcp-switch"
  version "1.0.2"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.2/mcp-switch-x86_64-apple-darwin.tar.gz"
      sha256 "c71e02ec5d0a35d21c2c7e7383dc2b776fc572561a3a5135abc953a137369836"
    end
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.2/mcp-switch-aarch64-apple-darwin.tar.gz"
      sha256 "e790f746bee1171e20891a6bd73afe2792b3a2e49137fdbf514e494f18030cbc"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.2/mcp-switch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "309fd5fbc5c90485237f32c09cb71cbce949972a835d44e706cdaf72fe4d3adb"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.2/mcp-switch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5cc4afecd1cae95e3707acafecb57502766466db751964aea92bdd2c961ab1fe"
    end
  end

  def install
    bin.install "mcp-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-switch --version")
  end
end
