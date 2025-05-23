# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Deepsource < Formula
  desc "Command line interface to DeepSource"
  homepage "https://github.com/deepsourcelabs/cli"
  version "0.9.0"
  license "BSD 2-Clause Simplified License"

  on_macos do
    url "https://github.com/DeepSourceCorp/cli/releases/download/v0.9.0/deepsource_0.9.0_darwin_x86_64.tar.gz"
    sha256 "3240af1ac883962144bc0fc2963026d0bd4644b3d662191a0e3f40261c8dca58"

    def install
      bin.install "deepsource"
      bash_completion.install "completions/deepsource.bash" => "deepsource"
      zsh_completion.install "completions/deepsource.zsh" => "_deepsource"
      fish_completion.install "completions/deepsource.fish"
    end

    if Hardware::CPU.arm?
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Deepsource
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/DeepSourceCorp/cli/releases/download/v0.9.0/deepsource_0.9.0_linux_x86_64.tar.gz"
      sha256 "83b6a5c1dfbe3592725b151d34d26616ae1434fcc50ddc0ef29a6a43fad2905c"

      def install
        bin.install "deepsource"
        bash_completion.install "completions/deepsource.bash" => "deepsource"
        zsh_completion.install "completions/deepsource.zsh" => "_deepsource"
        fish_completion.install "completions/deepsource.fish"
      end
    end
  end
end
