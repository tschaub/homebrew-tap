# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Stash < Formula
  desc "Caching proxy for offline demos."
  homepage "https://github.com/tschaub/stash"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_intel do
      url "https://github.com/tschaub/stash/releases/download/v0.3.0/stash-darwin-amd64.tar.gz"
      sha256 "abcde334802471d927a60b898299a2fcbab8892bce90be48b001888ca46bd8d6"

      def install
        bin.install "stash"
      end
    end
    on_arm do
      url "https://github.com/tschaub/stash/releases/download/v0.3.0/stash-darwin-arm64.tar.gz"
      sha256 "cc18a88b20e1ad7755d74af7be47862b6a8ef6fb12ca4c4ce2f4c961c94815ae"

      def install
        bin.install "stash"
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tschaub/stash/releases/download/v0.3.0/stash-linux-amd64.tar.gz"
        sha256 "bb24f9d15b6e26d8e97611fee20b241d91c65c77863678d516ce9d0a50045c7e"

        def install
          bin.install "stash"
        end
      end
    end
    on_arm do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/tschaub/stash/releases/download/v0.3.0/stash-linux-arm64.tar.gz"
        sha256 "230248cbaebf368d617a07c0d4ae92bc0f6f43af77abb3c22d5bb1006d7c558a"

        def install
          bin.install "stash"
        end
      end
    end
  end

  test do
    system "#{bin}/stash --help"
  end
end
