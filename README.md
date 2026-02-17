# Homebrew Tap for ElevenLabs CLI

[![elevenlabs-cli](https://img.shields.io/badge/elevenlabs--cli-Unofficial%20ElevenLabs%20CLI-blue)](https://github.com/hongkongkiwi/elevenlabs-cli)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow)](https://opensource.org/licenses/MIT)

Official [Homebrew](https://brew.sh/) tap for [ElevenLabs CLI](https://github.com/hongkongkiwi/elevenlabs-cli) - an unofficial command-line tool for ElevenLabs text-to-speech API.

## What is ElevenLabs CLI?

ElevenLabs CLI (`elevenlabs-cli`) is an unofficial command-line tool for the ElevenLabs text-to-speech and voice AI platform. It provides:

- **Text-to-Speech**: Convert text to speech using ElevenLabs voices
- **Voice Cloning**: Clone voices from audio samples
- **Voice Library**: Browse and use voices from the ElevenLabs library
- **MCP Server**: Model Context Protocol server for AI assistant integration
- **Audio Processing**: Convert, manipulate, and manage audio files

## Install

```bash
# Add the tap
brew tap hongkongkiwi/elevenlabs-cli

# Install elevenlabs-cli
brew install elevenlabs-cli
```

## Quick Start

```bash
# Set your API key
export ELEVENLABS_API_KEY=your_api_key_here

# List available voices
elevenlabs-cli voices list

# Generate speech from text
elevenlabs-cli tts generate --text "Hello, world!" --voice "Rachel" --output hello.mp3

# Start MCP server (for AI assistant integration)
elevenlabs-cli mcp
```

## Requirements

- **macOS** (Intel or Apple Silicon) or **Linux**
- **ElevenLabs API key** (get one at https://elevenlabs.io)

## Documentation

For full documentation, see the [main repository](https://github.com/hongkongkiwi/elevenlabs-cli).

## Related Projects

- [elevenlabs-cli](https://github.com/hongkongkiwi/elevenlabs-cli) - Main CLI repository
- [snap-elevenlabs-cli](https://github.com/hongkongkiwi/snap-elevenlabs-cli) - Snap package

## License

MIT License - see [LICENSE](https://github.com/hongkongkiwi/elevenlabs-cli/blob/main/LICENSE) for details.