# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Dbac < Formula
  desc "dbac :)"
  homepage "https://github.com/ehok/dbac"
  version "1.0.4"
  license "apache-2.0"

  on_macos do
    url "https://github.com/ehok/dbac/releases/download/v1.0.4/dbac_1.0.4_darwin_amd64.tar.gz"
    sha256 "1ec1a4350ee49516681ed47215f48d0b4d5e898da27cca23a1c7768e1c8a59db"

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
        url "https://github.com/ehok/dbac/releases/download/v1.0.4/dbac_1.0.4_linux_amd64.tar.gz"
        sha256 "c302f19ec69c6b6ad5075c6ae7b3e4aee03ad64e30eb9c2354c61fc095d06804"

        def install
          bin.install "dbac"
        end
      end
    end
  end
end
