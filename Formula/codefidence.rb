class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.4.1"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.1/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "1c5b44256d263891208d6451b7d41fd83b359aa85b0b9120a77a33ad5b51fb24"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.1/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "584bc0940fc15b28257509abe484448725307783c4e187c670cd29680b5af00b"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.1/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "02603d974f512d701596708dff2c3421a7c122391c56c4e9915887f6d4a2a08d"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.1/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "9749cba4a2dc8e70d703607a1daf1ffc6a10878f101ca667bf97f6cb8d1cfd5c"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
