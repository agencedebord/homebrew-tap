class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.4.0"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.0/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "cccfcd2cea0d726a1fb276953a0d0f846fad61ac3775167053e6bc5590b8d1d5"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.0/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "b58dfbcffac404c44781ac8d40020a16f4a7af084a4be407c4e22c081268f948"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.0/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "afbd990cde705e1f93f21afe1a54c4972da3c82de03f9146935d79e9938be3b4"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.4.0/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b04fd5a7811500a059a354bc1ec28aa98100958c635914cba96f411cc213d8f5"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
