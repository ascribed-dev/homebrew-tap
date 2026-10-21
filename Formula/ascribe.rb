# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.4.1"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.1/ascribe-0.4.1-darwin-arm64.tar.gz"
      sha256 "60affe1d714a8e877581773860a2ec317125a5df941f4c83fab8a46be3fadad1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.1/ascribe-0.4.1-linux-arm64.tar.gz"
      sha256 "f58144c1acd914a8db15e1fe7599e33071c0127325d026b1a63c2e1dc1b09623"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.1/ascribe-0.4.1-linux-x64.tar.gz"
      sha256 "9d776ff3c7d1ff2ef239e7193a436283aeb863da5b45affd93adb47914ff0cc9"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
