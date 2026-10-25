# Written by scripts/release/formula.ts in ascribed-dev/ascribe for each release.
# Change that script, not this file.
class Ascribe < Formula
  desc "Documentation as code: Markdown with directives, checked and built"
  homepage "https://ascribed-dev.com"
  version "0.4.3"
  license "MPL-2.0"

  on_macos do
    depends_on arch: :arm64
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.3/ascribe-0.4.3-darwin-arm64.tar.gz"
      sha256 "c69ba8c52f8cc6d722b225a00d1d6d91837f3a0b77bf77d79b048ffed63ce3e0"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.3/ascribe-0.4.3-linux-arm64.tar.gz"
      sha256 "0e1aa6ff0d8b05ef798b893179ae946b2bc56e03686d46bcd9f481dfeb6aedfb"
    end
    on_intel do
      url "https://github.com/ascribed-dev/ascribe/releases/download/v0.4.3/ascribe-0.4.3-linux-x64.tar.gz"
      sha256 "1a81ceb0eca25559a788fa10c511abd6cb8092f382f19bacf036d4ee1f6c4f96"
    end
  end

  def install
    bin.install "ascribe"
  end

  test do
    assert_equal "ascribe #{version}", shell_output("#{bin}/ascribe --version").strip
  end
end
