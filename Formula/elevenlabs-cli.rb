class ElevenlabsCli < Formula
  desc "Unofficial CLI for ElevenLabs text-to-speech API"
  homepage "https://github.com/hongkongkiwi/elevenlabs-cli"
  license "MIT"
  version "0.1.4"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.4/elevenlabs-cli-v0.1.4-aarch64-apple-darwin.tar.gz"
      sha256 "0a38dc62ed912cc3aeef0b3aebf3b15bfd6e67d22ad9679237e74ca24a1a7867"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.4/elevenlabs-cli-v0.1.4-x86_64-apple-darwin.tar.gz"
      sha256 "f2e5da1017b870194a175334ad80478e90233ba2ea14e5d337fd13a3d3ecbb46"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.4/elevenlabs-cli-v0.1.4-aarch64-unknown-linux-musl.tar.gz"
      sha256 "c4cbf89857eb2e0b1fef87ff82a2e25b6eb8f9abb2d0a243f31472e2b287d089"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.4/elevenlabs-cli-v0.1.4-x86_64-unknown-linux-musl.tar.gz"
      sha256 "c93ae93c3c0a29f0a15ee430fbff60fe19d9bd32dcc89e2d43c67ebbddeb591c"
    end
  end

  def install
    bin.install "elevenlabs-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elevenlabs-cli --version").strip
  end
end
