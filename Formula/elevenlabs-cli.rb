class ElevenlabsCli < Formula
  desc "Unofficial CLI for ElevenLabs text-to-speech API"
  homepage "https://github.com/hongkongkiwi/elevenlabs-cli"
  license "MIT"
  version "0.1.7"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.7/elevenlabs-cli-v0.1.7-aarch64-apple-darwin.tar.gz"
      sha256 "74ca73419ef7f27ea980f69a7e0ed24338be6a4e3d2a5dd5bd1385dc0c0d3918"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.7/elevenlabs-cli-v0.1.7-x86_64-apple-darwin.tar.gz"
      sha256 "aa4a6af00f851f0d456e372ba2a692e5e20e69436217def91fcf07b438f23a9e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.7/elevenlabs-cli-v0.1.7-aarch64-unknown-linux-musl.tar.gz"
      sha256 "e10c74606c69046ad6f4a51c9863b457a502e30d60bba388bc58793d5e33ccbc"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.7/elevenlabs-cli-v0.1.7-x86_64-unknown-linux-musl.tar.gz"
      sha256 "0f7c93a50fdaacf15dce31ee520cf4af066dbcae8d7f8e960bd3e7e9c53bdd66"
    end
  end

  def install
    bin.install "elevenlabs-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elevenlabs-cli --version").strip
  end
end
