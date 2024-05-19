# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubenpod < Formula
  desc "kubenpod does something"
  homepage "https://github.com/ehok/kubenpod"
  version "1.1.0"
  license "apache-2.0"

  on_macos do
    url "https://github.com/ehok/kubenpod/releases/download/v1.1.0/kubenpod_1.1.0_darwin_amd64.tar.gz"
    sha256 "0c769956bd6f6497f0b212fd1c55fff9b7a9f4023e986612fb2f9e602bdf7ac5"

    def install
      bin.install "kubenpod"
    end

    on_arm do
      def caveats
        <<~EOS
          The darwin_arm64 architecture is not supported for the Kubenpod
          formula at this time. The darwin_amd64 binary may work in compatibility
          mode, but it might not be fully supported.
        EOS
      end
    end
  end

  on_linux do
    on_intel do
      if Hardware::CPU.is_64_bit?
        url "https://github.com/ehok/kubenpod/releases/download/v1.1.0/kubenpod_1.1.0_linux_amd64.tar.gz"
        sha256 "f3af54a6dff0b6987564967c230476bb122d633d193427bca5a1c806524829b4"

        def install
          bin.install "kubenpod"
        end
      end
    end
  end
end
