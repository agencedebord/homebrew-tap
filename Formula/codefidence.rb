class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.5.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "d145ae7dbff0dba38dd83f08137bcb95d82fc9d06eb5890ce1bbac2f18e038c7"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "f7b47bfed32de0e229822420ca23a65dc8b043b1a9d2bc3c2ff0a085a64941b1"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e533f00cf838d555af0bc85c43eb4253cd99c58bfc9c37375db4ce191440aea7"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.5.0/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a36cc2492e241b8759e12162356d11944b0a79995a5f58f81fb1d0716cbd6547"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
