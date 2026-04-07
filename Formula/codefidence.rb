class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "a935321001a052e495e5e078423af5cababaefcf00e559fc5258476a651b94d6"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "3f407fb83e6f99cbb89d54616b77966caca70562ed59974c66b006ef42382bae"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "cb7947181a7f8e17ea77174417bfad8a0452f56e22f02ac9473664bc77e42c20"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bc383e3fc2de966e4f187a7d214f34a584e2064c6c5088893d68034f15f25d25"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
