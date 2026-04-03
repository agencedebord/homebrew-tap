class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.4.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.2/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "8defea2280d3fffd28cfad3248933ede69baf27e55dc2d54ab3ac03ae2866599"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.2/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "6071476a92bb2549d97294613290edf567c8e7b4edc2e1a44d473a569933ae2a"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.2/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "7891be3512f25032281e7d174cd7abd3a8044f5be5b3e9fb57d80a73332c0f29"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.2/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "c7647a6fe20884c6740e32cc0404ec5162c681264edffeecb045d641cc59d855"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
