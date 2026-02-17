class ElevenlabsCli < Formula
  desc "Unofficial CLI for ElevenLabs text-to-speech API"
  homepage "https://github.com/hongkongkiwi/elevenlabs-cli"
  license "MIT"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.0/elevenlabs-cli-v0.1.0-aarch64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.0/elevenlabs-cli-v0.1.0-x86_64-apple-darwin.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.0/elevenlabs-cli-v0.1.0-aarch64-unknown-linux-musl.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.0/elevenlabs-cli-v0.1.0-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  def install
    bin.install "elevenlabs-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elevenlabs-cli --version").strip
  end
end