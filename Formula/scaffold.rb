# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Scaffold < Formula
  desc "Scaffold files in a solid testable and reliable manner"
  homepage "https://github.com/kjuulh/scaffold"
  version "0.1.2"
  license "MIT"

  depends_on "gh"
  depends_on "git"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/kjuulh/scaffold/releases/download/v0.1.2/scaffold-darwin-amd64"
      sha256 "2e9c69e378433534df7c77a45406f858dad29afb0da6973b03865bbed2829b3f"

      def install
        bin.install "scaffold-darwin-amd64" => "scaffold"
      end
    end
    if Hardware::CPU.arm?
      url "https://github.com/kjuulh/scaffold/releases/download/v0.1.2/scaffold-darwin-arm64"
      sha256 "524ca4298c26e7c61ac235d77470cab4b453459aa4923bcc2cf90544da5a65a8"

      def install
        bin.install "scaffold-darwin-arm64" => "scaffold"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kjuulh/scaffold/releases/download/v0.1.2/scaffold-linux-amd64"
        sha256 "e7ed3ec6d7c161e74d3c9a87fbdbd15ea5ddf9dedc0a3ef8618c87f6e2378bda"

        def install
          bin.install "scaffold-linux-amd64" => "scaffold"
        end
      end
    end
    if Hardware::CPU.arm?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/kjuulh/scaffold/releases/download/v0.1.2/scaffold-linux-arm64"
        sha256 "e85fb1d0dbf48359fc962e78cb6b5cedd8636cb8b20a74f7b32a8743785805e7"

        def install
          bin.install "scaffold-linux-arm64" => "scaffold"
        end
      end
    end
  end

  def caveats
    <<~EOS
      export SCAFFOLD_REGISTRY to a git url pointing to your scaffold fork
    EOS
  end
end
