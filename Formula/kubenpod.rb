# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class Kubenpod < Formula
  desc "kubenpod does something"
  homepage "https://github.com/ehok/kubenpod"
  version "1.0.0"
  license "apache-2.0"

  on_macos do
    url "https://github.com/ehok/kubenpod/releases/download/v1.0.0/kubenpod_1.0.0_darwin_amd64.tar.gz"
    sha256 "a25279a749008b1b2171c3f378f015dc70ec5f0f9db98cab7918e9fcd1fe1451"

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
        url "https://github.com/ehok/kubenpod/releases/download/v1.0.0/kubenpod_1.0.0_linux_amd64.tar.gz"
        sha256 "a8a2d78e630e2720187566f050f3e684fbf658b6e85cc30800c2a07a69ee9346"

        def install
          bin.install "kubenpod"
        end
      end
    end
  end
end