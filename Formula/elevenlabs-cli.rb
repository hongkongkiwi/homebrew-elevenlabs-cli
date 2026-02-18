class ElevenlabsCli < Formula
  desc "Unofficial CLI for ElevenLabs text-to-speech API"
  homepage "https://github.com/hongkongkiwi/elevenlabs-cli"
  license "MIT"
  version "0.1.8"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.8/elevenlabs-cli-v0.1.8-aarch64-apple-darwin.tar.gz"
      sha256 "bdc4b779b799291bc90332a8901db24a5d743f41384907f767b34288de81c40b"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.8/elevenlabs-cli-v0.1.8-x86_64-apple-darwin.tar.gz"
      sha256 "4037159ea59d56bbbe9ce173149678cbb14c0ce4ddd1902eea31e881e616417d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.8/elevenlabs-cli-v0.1.8-aarch64-unknown-linux-musl.tar.gz"
      sha256 "ad3c323cb128413b3c00c8713282c575f7b55c4ed57755091ff70acb03a40d7d"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.8/elevenlabs-cli-v0.1.8-x86_64-unknown-linux-musl.tar.gz"
      sha256 "cb10a20f148b2093ad132e77358bf81850b36b9bdcd1e8fb55469fa74662ad92"
    end
  end

  def install
    bin.install "elevenlabs-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elevenlabs-cli --version").strip
  end
end
