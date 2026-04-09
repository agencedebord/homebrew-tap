class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.6.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.1/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "a27a84e3e9dc4025b5cb7d1cdb74667f26c942b2ddac385d7ba68774b178cb00"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.1/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "2c3308e92c642ca2660d35499a07c48b49d120cc22608644b9dcd5d3558c29e8"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.1/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d434afe52920cdcc06472153f2a1570d821d1c9a49c93084f15a7a5bc875c845"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.1/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "091fe77ffab7349a7ec33f87e959aa45b46589be8a26388b48fa908679c84744"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
