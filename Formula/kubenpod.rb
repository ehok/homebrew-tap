# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubenpod < Formula
  desc "kubenpod does something"
  homepage "https://github.com/ehok/kubenpod"
  version "1.1.3"
  license "apache-2.0"

  on_macos do
    url "https://github.com/ehok/kubenpod/releases/download/v1.1.3/kubenpod_1.1.3_darwin_amd64.tar.gz"
    sha256 "20935bd01a4114cbcaf7d844edaf79f670164ae784f6fa84f0926b46108f8763"

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
        url "https://github.com/ehok/kubenpod/releases/download/v1.1.3/kubenpod_1.1.3_linux_amd64.tar.gz"
        sha256 "ad8fc4b5b970c9328e6f4a50ec61cebe9c935844955587353b0fcfe6407bf74c"

        def install
          bin.install "kubenpod"
        end
      end
    end
  end
end
