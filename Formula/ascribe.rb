# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.3.2"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.2/ascribe-0.3.2-darwin-arm64.tar.gz"
      sha256 "201f7f2172915a2c3f9f9e32f6ed756a78b4a4ac0262b84849b73e938fece2c6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.2/ascribe-0.3.2-linux-arm64.tar.gz"
      sha256 "55be017c0a8372e06c2f627d8272172ef1707a3c9b26da22a44a13a4b4687715"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.3.2/ascribe-0.3.2-linux-x64.tar.gz"
      sha256 "627d49363a2afc26abfd8f55b064366e6d8b3bb538edcfa16acac17876ab7485"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
