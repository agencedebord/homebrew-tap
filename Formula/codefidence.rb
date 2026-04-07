class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "370ce6593e7d5d3c358d798d1f87302e646eeb00fe643a4b414576477649815e"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "dc3073a4da7aeaa0f174d829dafb52621cf3888ece4995c72b0fa72f5dfd020f"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "934da1b3eab1f0bac8d81b3483bbc4d6a971a0a9d18e8f0950b6b661b05e46c4"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a4e54b2088d478e6d8c27454bc52dadbca706368dfcf72d0aa98f31783f60309"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
