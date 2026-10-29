# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.4.5"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.5/ascribe-0.4.5-darwin-arm64.tar.gz"
      sha256 "e81c678d6cefe1de72b8281c12bb3bc0abb9280961674dcba860351a72e9f7c0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.5/ascribe-0.4.5-linux-arm64.tar.gz"
      sha256 "04d5cbc2dd3943a399a79cdbc5ad2e6efe9cdb792b1dc6d2568580da5c4220ea"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.5/ascribe-0.4.5-linux-x64.tar.gz"
      sha256 "abf1f8a3aec682124155bf552f225dc3f7611dfeae361e7cf1fd8502b5f5d9bb"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
