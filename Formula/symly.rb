class Symly < Formula
  desc "Utility for centralizing sparse file trees with symbolic links"
  homepage "https://github.com/loicrouchon/symly"
  url "https://github.com/loicrouchon/symly/releases/download/v0.12.0/symly-0.12.0-homebrew.zip"
  sha256 "8ce85c005622fdd0c34511101f1549f865417495c25afcd10171865ced3d86b1"
  license "Apache-2.0"

  depends_on "coreutils"
  depends_on "openjdk"

  def install
    prefix.install Dir["*"]
  end

  test do
    output = shell_output("#{bin}/symly --version")
    assert_match "0.12.0", output
  end
end
