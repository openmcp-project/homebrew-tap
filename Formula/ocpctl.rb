# typed: false
# frozen_string_literal: true

class Ocpctl < Formula
  desc "CLI tool for managing OpenControlPlane environments"
  homepage "https://openmcp-project.github.io/docs/"
  version "0.2.0"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.2.0/ocpctl_0.2.0_darwin_amd64.tar.gz"
      sha256 "e0b4c84cf6efc0a73bbb04276fb96108f601668c1d37fc38739d2814bac9a808"
    end
    on_arm do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.2.0/ocpctl_0.2.0_darwin_arm64.tar.gz"
      sha256 "4e7c119385d9deac560207f7382cbe9b9755775f378d2d4347876427858ba7cf"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.2.0/ocpctl_0.2.0_linux_amd64.tar.gz"
      sha256 "3a32024c37ed8aef4b5fd71a96ee1c816e381ad61f6e39fe61b8063f6d9bb687"
    end
    on_arm do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.2.0/ocpctl_0.2.0_linux_arm64.tar.gz"
      sha256 "1e086e52f522f05450756cb4c7c177628fb6df441ca92961d335410bbbbc5e30"
    end
  end

  def install
    bin.install Dir["ocpctl-*"].first => "ocpctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocpctl --version 2>&1", 0)
  end
end
