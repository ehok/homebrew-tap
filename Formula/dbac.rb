# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dbac < Formula
  desc "dbac :)"
  homepage "https://github.com/ehok/dbac"
  version "1.0.5"
  license "apache-2.0"

  on_macos do
    url "https://github.com/ehok/dbac/releases/download/v1.0.5/dbac_1.0.5_darwin_amd64.tar.gz"
    sha256 "be15293319b397970aaff452293c6cf28233c372629a5b72f9ce903c411f3e42"

    def install
      bin.install "dbac"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Dbac
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ehok/dbac/releases/download/v1.0.5/dbac_1.0.5_linux_amd64.tar.gz"
        sha256 "832cdc3277d58c91afffc28d7c66fc370cd3813289635f0f07b9a86e3d947612"

        def install
          bin.install "dbac"
        end
      end
    end
  end
end