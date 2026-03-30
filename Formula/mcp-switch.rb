# typed: false
# frozen_string_literal: true

class McpSwitch < Formula
  desc "CLI tool to toggle MCP servers for Claude Code"
  homepage "https://github.com/incu6us/mcp-switch"
  version "1.0.1"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.1/mcp-switch-x86_64-apple-darwin.tar.gz"
      sha256 "42a8c1d53239e68280c65de771d210b13949efbc5fa9d1301065849782d785c4"
    end
    if Hardware::CPU.arm?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.1/mcp-switch-aarch64-apple-darwin.tar.gz"
      sha256 "287c17696a33a8f86a8c2a3fd8b495a6368f75eed85bb011656574328f52a731"
    end
  end

  on_linux do
    if Hardware::CPU.intel? && Hardware::CPU.is_64_bit?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.1/mcp-switch-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1bd0c5df7f0f673d34e18340c735708782b093ae65e0d7542eca7ace8898a882"
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/incu6us/mcp-switch/releases/download/v1.0.1/mcp-switch-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "712f681d65c8525fd3eb179e1ae2cf76f1688f785417194c4b7e39de1c455fb6"
    end
  end

  def install
    bin.install "mcp-switch"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/mcp-switch --version")
  end
end
