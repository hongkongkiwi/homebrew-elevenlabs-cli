<h1 align="center">Homebrew Tap: ElevenLabs CLI</h1>

<p align="center">
  Install <code>elevenlabs-cli</code> on macOS and Linux via Homebrew.
</p>

<p align="center">
  <a href="https://github.com/hongkongkiwi/elevenlabs-cli/releases">
    <img src="https://img.shields.io/github/v/release/hongkongkiwi/elevenlabs-cli?style=for-the-badge&logo=github&label=upstream%20release" alt="Upstream Release" />
  </a>
  <a href="https://github.com/hongkongkiwi/homebrew-elevenlabs-cli/blob/main/Formula/elevenlabs-cli.rb">
    <img src="https://img.shields.io/badge/formula-elevenlabs--cli-FBB040?style=for-the-badge&logo=homebrew&logoColor=black" alt="Homebrew Formula" />
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/license-MIT-3DA639?style=for-the-badge" alt="MIT License" />
  </a>
</p>

> [!WARNING]
> ElevenLabs CLI is community-built and not an official ElevenLabs release.

## Install

```bash
brew tap hongkongkiwi/elevenlabs-cli
brew install elevenlabs-cli
```

## Upgrade

```bash
brew update
brew upgrade elevenlabs-cli
```

## Verify

```bash
elevenlabs-cli --version
```

## Quick Test

```bash
export ELEVENLABS_API_KEY="your-api-key"
elevenlabs-cli tts "Homebrew install is working" --output hello.mp3
```

## What You Get

- Native bottle-based installs for supported macOS/Linux targets
- Formula updates tied to upstream release artifacts and checksums
- Same command surface as the main CLI project

## Related Repositories

| Repository | Purpose | README |
| --- | --- | --- |
| [hongkongkiwi/elevenlabs-cli](https://github.com/hongkongkiwi/elevenlabs-cli) | Main CLI source and release pipeline | [Open](https://github.com/hongkongkiwi/elevenlabs-cli/blob/main/README.md) |
| [hongkongkiwi/scoop-elevenlabs-cli](https://github.com/hongkongkiwi/scoop-elevenlabs-cli) | Windows Scoop bucket | [Open](https://github.com/hongkongkiwi/scoop-elevenlabs-cli/blob/main/README.md) |
| [hongkongkiwi/action-elevenlabs-cli](https://github.com/hongkongkiwi/action-elevenlabs-cli) | GitHub Actions integration | [Open](https://github.com/hongkongkiwi/action-elevenlabs-cli/blob/main/README.md) |
| [hongkongkiwi/elevenlabs-cli-skill](https://github.com/hongkongkiwi/elevenlabs-cli-skill) | AI-agent skill package | [Open](https://github.com/hongkongkiwi/elevenlabs-cli-skill/blob/main/README.md) |

## License

MIT.
