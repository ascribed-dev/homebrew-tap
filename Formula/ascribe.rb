# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.3.0"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.0/ascribe-0.3.0-darwin-arm64.tar.gz"
      sha256 "f1786b337b9653f12563ee6d1f2fd5c9419acf0bb972f30cb4b809679f3a588e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.0/ascribe-0.3.0-linux-arm64.tar.gz"
      sha256 "a8bb05b0909bc8d60c40c036183b9f3a336949ee3efefdec2060bf417f85d0c4"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.0/ascribe-0.3.0-linux-x64.tar.gz"
      sha256 "589eb93132d357702bf591b5a884775caed1bc1883970e32d47391a45112fbaa"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
