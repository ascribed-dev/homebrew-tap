# Ascribe's Homebrew tap

[Ascribe](https://github.com/ascribed-dev/ascribe) is a markup language and toolchain for documentation written as code. This tap installs its command, `ascribe`, on macOS (Apple silicon) and Linux (x64 and arm64), without Node.

```sh
brew install ascribed-dev/tap/ascribe
ascribe --version
```

Or tap it once, then use the short name:

```sh
brew tap ascribed-dev/tap
brew install ascribe
brew upgrade ascribe
```

## How the formula is updated

`Formula/ascribe.rb` isn't edited by hand. Ascribe's release workflow writes it from each release's `SHA256SUMS` and opens a pull request here, which a maintainer merges once the release is published. [RELEASING.md](https://github.com/ascribed-dev/ascribe/blob/main/RELEASING.md) has the steps.

Problems with installing go to [Ascribe's issues](https://github.com/ascribed-dev/ascribe/issues).
