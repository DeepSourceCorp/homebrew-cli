# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deepsource < Formula
  desc "Command line interface to DeepSource"
  homepage "https://github.com/deepsourcelabs/cli"
  version "0.3.1"
  license "BSD 2-Clause Simplified License"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/deepsourcelabs/cli/releases/download/v0.3.1/deepsource_0.3.1_darwin_arm64.tar.gz"
      sha256 "94084976c6a181c8d6f8078e3955369ca7f067aa4f5cdd0833caedd2cf830708"

      def install
        bin.install "deepsource"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/deepsourcelabs/cli/releases/download/v0.3.1/deepsource_0.3.1_darwin_x86_64.tar.gz"
      sha256 "94f0d6eb1caf40e8676c8247e54c881f17dfed00f59945aabcb91eee7f33666d"

      def install
        bin.install "deepsource"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/deepsourcelabs/cli/releases/download/v0.3.1/deepsource_0.3.1_linux_x86_64.tar.gz"
      sha256 "47a221f0d5d64ee8df44d18d1ca9155e5c3c602783becffa293545f48c139e66"

      def install
        bin.install "deepsource"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/deepsourcelabs/cli/releases/download/v0.3.1/deepsource_0.3.1_linux_arm64.tar.gz"
      sha256 "fdd6e6d247b08b2cfefc069855b8d40e591e7a17d03a31089de63d7785e488ca"

      def install
        bin.install "deepsource"
      end
    end
  end
end
