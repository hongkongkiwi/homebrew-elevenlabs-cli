<h1 align="center">🍺 Homebrew Tap for ElevenLabs CLI</h1>

<p align="center">
  <strong>Install ElevenLabs CLI on macOS and Linux with Homebrew</strong>
</p>

<p align="center">
  <a href="https://github.com/hongkongkiwi/elevenlabs-cli/releases">
    <img src="https://img.shields.io/github/v/release/hongkongkiwi/elevenlabs-cli?style=flat-square&logo=github" alt="Release">
  </a>
  <a href="https://github.com/hongkongkiwi/elevenlabs-cli/actions">
    <img src="https://img.shields.io/github/actions/workflow/status/hongkongkiwi/elevenlabs-cli/ci.yml?style=flat-square&logo=github" alt="CI">
  </a>
  <a href="https://opensource.org/licenses/MIT">
    <img src="https://img.shields.io/badge/License-MIT-blue?style=flat-square" alt="License">
  </a>
</p>

---

> **Unofficial CLI**: This is an independent, community-built CLI client. It is not officially released by ElevenLabs.

---

## What is ElevenLabs CLI?

ElevenLabs CLI is a comprehensive command-line tool for the ElevenLabs AI audio platform:

| Feature | Description |
|---------|-------------|
| 🗣️ **Text-to-Speech** | Convert text to natural speech with 100+ voices |
| 🎧 **Speech-to-Text** | Transcribe audio with speaker diarization |
| 🎭 **Voice Cloning** | Clone voices from audio samples |
| 🔊 **Sound Effects** | Generate sound effects from text |
| 🎚️ **Voice Changer** | Transform voice in audio files |
| 🌍 **Dubbing** | Translate and dub video/audio |

## Installation

```bash
# Add the tap
brew tap hongkongkiwi/tap

# Install elevenlabs-cli
brew install elevenlabs-cli
```

## Quick Start

```bash
# Set your API key
export ELEVENLABS_API_KEY=your_api_key_here

# List available voices
elevenlabs voice list

# Generate speech
elevenlabs tts "Hello, world!" --output hello.mp3 --voice Rachel

# Transcribe audio
elevenlabs stt audio.mp3

# Generate sound effect
elevenlabs sfx "Gentle rain falling on leaves"
```

## Requirements

- **macOS** (Intel or Apple Silicon) or **Linux**
- **ElevenLabs API key** (get one free at [ElevenLabs API Keys](https://elevenlabs.io/app/settings/api-keys))

## Documentation

For full documentation, see the [main repository](https://github.com/hongkongkiwi/elevenlabs-cli).

## Related Projects

| Project | Description |
|---------|-------------|
| [elevenlabs-cli](https://github.com/hongkongkiwi/elevenlabs-cli) | Main CLI repository |
| [scoop-elevenlabs-cli](https://github.com/hongkongkiwi/scoop-elevenlabs-cli) | Windows Scoop bucket |
| [skill-elevenlabs-cli](https://github.com/hongkongkiwi/skill-elevenlabs-cli) | ClawHub skill |

## License

MIT License
