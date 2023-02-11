# typed: false
# frozen_string_literal: true

# This file was generated by GoReleaser. DO NOT EDIT.
class GitlabComment < Formula
  desc "CLI to create and hide GitLab comments
"
  homepage "https://github.com/yuyaban/gitlab-comment"
  version "0.1.6"
  license "MIT"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/yuyaban/gitlab-comment/releases/download/v0.1.6/gitlab-comment_0.1.6_darwin_arm64.tar.gz"
      sha256 "4df9fe7e63f0d71a671d5e2458871d5908cb99d7ee6cb2fe89427e091013d6ee"

      def install
        bin.install "gitlab-comment"
      end
    end
    if Hardware::CPU.intel?
      url "https://github.com/yuyaban/gitlab-comment/releases/download/v0.1.6/gitlab-comment_0.1.6_darwin_amd64.tar.gz"
      sha256 "21d6bfa2c5467894c5484c049c08a7c11021b364dc33769d7e32234506cdf3a3"

      def install
        bin.install "gitlab-comment"
      end
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/yuyaban/gitlab-comment/releases/download/v0.1.6/gitlab-comment_0.1.6_linux_amd64.tar.gz"
      sha256 "c1322ad2573553127a5d83597177477e61600a72e12496390bdd2c3aa2e8ce23"

      def install
        bin.install "gitlab-comment"
      end
    end
    if Hardware::CPU.arm? && Hardware::CPU.is_64_bit?
      url "https://github.com/yuyaban/gitlab-comment/releases/download/v0.1.6/gitlab-comment_0.1.6_linux_arm64.tar.gz"
      sha256 "658a566a0510a37dd92c6051f1d3416ca534e2d3e244302e1056bdeeeb3e5d83"

      def install
        bin.install "gitlab-comment"
      end
    end
  end

  test do
    system "#{bin}/gitlab-comment --version"
  end
end
