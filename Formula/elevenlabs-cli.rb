class ElevenlabsCli < Formula
  desc "Unofficial CLI for ElevenLabs text-to-speech API"
  homepage "https://github.com/hongkongkiwi/elevenlabs-cli"
  license "MIT"
  version "0.1.6"

  on_macos do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.6/elevenlabs-cli-v0.1.6-aarch64-apple-darwin.tar.gz"
      sha256 "b45a3eed182fbbf90ffc7f31acb07c77aac2c67a835c7c3057f27a8b1c7338cb"
    end
    on_intel do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.6/elevenlabs-cli-v0.1.6-x86_64-apple-darwin.tar.gz"
      sha256 "2bf5dc7d77c5231802f84f2cb576f0aa837ef7a2be6976540aca119254ae6c49"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.6/elevenlabs-cli-v0.1.6-aarch64-unknown-linux-musl.tar.gz"
      sha256 "b39df28c27258e201d86d805a0be659cd80288f365819f4f1ad667810ff2ccfe"
    end
    on_x86_64 do
      url "https://github.com/hongkongkiwi/elevenlabs-cli/releases/download/v0.1.6/elevenlabs-cli-v0.1.6-x86_64-unknown-linux-musl.tar.gz"
      sha256 "e96c303415f3521adbb7218a6db360fbb234f47b8ec4a5d24912d63e1e5ef89d"
    end
  end

  def install
    bin.install "elevenlabs-cli"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/elevenlabs-cli --version").strip
  end
end
