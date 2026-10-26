# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.4.4"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.4/ascribe-0.4.4-darwin-arm64.tar.gz"
      sha256 "546798ecedd33f8d1904b0561f4828358345f5fa2d97c16fdbb5475e1c08c981"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.4/ascribe-0.4.4-linux-arm64.tar.gz"
      sha256 "a3cad4b055bbdd2efd334edbb09de9e3cb919415cd9947662298d77e11d1bcea"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.4/ascribe-0.4.4-linux-x64.tar.gz"
      sha256 "125e12bad57972e2a1f55fc8c5aba8000b0ec20d39f5357075e1cac5bdcc9f71"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
