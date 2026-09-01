# Generated with JReleaser 1.25.0 at 2026-09-01T18:19:41.34433161Z

class Kobweb < Formula
  desc "Set up and manage your Kobweb (Compose HTML) app"
  homepage "https://kobweb.varabyte.com/"
  url "https://github.com/varabyte/kobweb-cli/releases/download/v0.9.23/kobweb-0.9.23.zip"
  version "0.9.23"
  sha256 "75e92124e6f8c54814fbbab8615add5a68f2a264386bdc7d767b33e27cbe0087"
  license "Apache-2.0"

  depends_on "openjdk"

  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/kobweb" => "kobweb"
  end

  test do
    output = shell_output("#{bin}/kobweb --version")
    assert_match "0.9.23", output
  end
end
