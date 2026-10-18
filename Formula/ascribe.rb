# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.4.0"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.0/ascribe-0.4.0-darwin-arm64.tar.gz"
      sha256 "c04d48c235da13c1db26e8e15a4180026a4d97e77a05ce2089e3035c79be3aaf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.0/ascribe-0.4.0-linux-arm64.tar.gz"
      sha256 "bf43db1f5b1d398f03671f47b5bb4d8d7060b5933537d095ea90cf402e029d09"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.0/ascribe-0.4.0-linux-x64.tar.gz"
      sha256 "5439daddd40cfdb3531ffa64a96fe85acd3f47ea2958ff33d6310030dbe404cd"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
