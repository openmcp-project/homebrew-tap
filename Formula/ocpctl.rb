# typed: false
# frozen_string_literal: true

class Ocpctl < Formula
  desc "CLI tool for managing OpenControlPlane environments"
  homepage "https://openmcp-project.github.io/docs/"
  version "0.4.1"
  license "Apache-2.0"

  on_macos do
    on_intel do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.4.1/ocpctl_0.4.1_darwin_amd64.tar.gz"
      sha256 "d23420fd7f44495fc8379556c476e5e96fec7c28461ec8d421cddeee416f2adf"
    end
    on_arm do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.4.1/ocpctl_0.4.1_darwin_arm64.tar.gz"
      sha256 "d332d95ea7312d51d250bf2c5a18816cae38c4c077754a650fb0b9fa86a9183d"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.4.1/ocpctl_0.4.1_linux_amd64.tar.gz"
      sha256 "80eddeec51571fd1c84a93a8fa1d3a2228a0101403a323c7db1a6686ee227c51"
    end
    on_arm do
      url "https://github.com/openmcp-project/ocpctl/releases/download/v0.4.1/ocpctl_0.4.1_linux_arm64.tar.gz"
      sha256 "f17f0172b49fd374eab0708d45edbce53ee0bb0573ea8de70c5e733d10658cc9"
    end
  end

  def install
    bin.install Dir["ocpctl-*"].first => "ocpctl"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/ocpctl --version 2>&1", 0)
  end
end
