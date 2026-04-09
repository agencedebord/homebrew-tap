class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.6.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.0/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "0098bed60c3b3895fff7e424fc0d6904b94cec0d181a58768a58d4b8f498a87d"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.0/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "ffe3a4a62f401b903cb0b1668a47f7714ffdd7d19b2100df507295e80b9db507"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.0/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "50bffd15e001e300470d1ca9ec58cef3d8c8bcd6ae85bb3f7af065caf69bb046"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.6.0/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d7c1d6555d83f61f42ef53bd422a02dc8f80487e10d459cb47dfb0411e4dfc25"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
