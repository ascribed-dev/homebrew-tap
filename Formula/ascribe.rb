# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.3.1"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.1/ascribe-0.3.1-darwin-arm64.tar.gz"
      sha256 "0a71ea79b974447bda7ec0a6de752e730c353779178618479785984969e23399"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.1/ascribe-0.3.1-linux-arm64.tar.gz"
      sha256 "2f69f9b92041a8b92f70cbba09c751aa22ff9abc75b2017d97563eb188834492"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.1/ascribe-0.3.1-linux-x64.tar.gz"
      sha256 "73167b09bfddf8fd2c0dcbdd22284e9d4076f1ede26e52200118bf86e0fb1a18"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
