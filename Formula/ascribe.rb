# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.4.2"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.2/ascribe-0.4.2-darwin-arm64.tar.gz"
      sha256 "023fcde55c40d22f3c0e4c05ec2acb64e9cf56f042a1d385d67d2112f954f820"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.2/ascribe-0.4.2-linux-arm64.tar.gz"
      sha256 "792d815e1a7673d05968ddba2405de902f551884b7a46fe23564b25fe9a777b0"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.2/ascribe-0.4.2-linux-x64.tar.gz"
      sha256 "1922a574529dce3cc77f11547d1e2c70bb54dfde8ef38bd399fdbfd3055b08b1"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
