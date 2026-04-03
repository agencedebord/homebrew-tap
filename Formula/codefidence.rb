class Codefidence < Formula
  desc "Structured project knowledge wiki for AI-assisted development"
  homepage "https://github.com/agencedebord/codefidence"
  version "0.3.3"
  license any_of: ["MIT", "Apache-2.0"]

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.3/codefidence-aarch64-apple-darwin.tar.gz"
      sha256 "7197efc7d4b500cd00094c864953c72635a88c41d327ab33ea5dfba19f981fc1"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.3/codefidence-x86_64-apple-darwin.tar.gz"
      sha256 "842155017bafb45fc7477593f523ade78ccccec3e515d29ffe796245d391992d"
    end
  end

  on_linux do
    if Hardware::CPU.arm?
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.3/codefidence-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d703c0683943bff4eddedee366fe81fc597caefc56740122cb02c8344893fc70"
    else
      url "https://github.com/agencedebord/codefidence/releases/download/v0.3.3/codefidence-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "42e5672999857660475ae9834ecbe5f9d68ed1db31ae19287486cdc7ff9a2a2c"
    end
  end

  def install
    bin.install "codefidence"
  end

  test do
    assert_match "codefidence", shell_output("#{bin}/codefidence --version")
  end
end
