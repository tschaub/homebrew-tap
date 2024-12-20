# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Serve < Formula
  desc "Serve files via HTTP."
  homepage "https://github.com/tschaub/serve"
  version "0.6.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tschaub/serve/releases/download/v0.6.0/serve-darwin-amd64.tar.gz"
      sha256 "8866a0525ea7884194b93c4388482acb2fd1c705ee483387e90ccfc0685d6dba"

      def install
        bin.install "serve"
      end
    end
    on_arm do
      url "https://github.com/tschaub/serve/releases/download/v0.6.0/serve-darwin-arm64.tar.gz"
      sha256 "c42490cef5d802aa9fa31e3b7ed674993ebb2647a4a77399fbc320c980db0134"

      def install
        bin.install "serve"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tschaub/serve/releases/download/v0.6.0/serve-linux-amd64.tar.gz"
        sha256 "9ec6eff6f28e8d7384e3deb827ce8e6be149b61a8980bdd76b4da76299b5ac97"

        def install
          bin.install "serve"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tschaub/serve/releases/download/v0.6.0/serve-linux-arm64.tar.gz"
        sha256 "8e857cc7e3418ad9c3186974fb6a1849ac3464d195f40764fed60b384c075b94"

        def install
          bin.install "serve"
        end
      end
    end
  end

  test do
    system "#{bin}/serve --help"
  end
end
