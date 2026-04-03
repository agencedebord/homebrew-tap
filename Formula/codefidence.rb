class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.3.2"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.2/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "bc17a8e248a6375d087c5417d1a7d3b5a425895947a540a7c3cb10048ec7f725"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.2/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "0f202f1fd68528b6e82cc35764692ef0957e503fde2921d0d7d5b7cecc6f0722"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.2/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "98c58fe326c2d6edb31f06138d76696a2b6922fc3336ec41f7d613787df142c0"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.2/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "502bb57db409003d7de28adc55d11b3e997a871b9a325c93626263c284a0963e"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
