class Taskbaton < Formula
  desc "Pass work state between agentic tool sessions"
  homepage "https://github.com/ssthil/taskbaton"
  version "0.3.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.3.0/taskbaton_0.3.0_darwin_arm64.tar.gz"
      sha256 "724d4d9f4106bb65895a47a3f31870d4c474067346d4070505c37b06d5f5a32b"
    end
    on_intel do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.3.0/taskbaton_0.3.0_darwin_amd64.tar.gz"
      sha256 "79c0c73c0b61b3bac4e76a0bd91102296e559997c99488dae27d9b3eea4e8519"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.3.0/taskbaton_0.3.0_linux_arm64.tar.gz"
      sha256 "a88c74afc9549cc6220b5182b66f00ceb5e08351e7fcb509fdfda3f00b511574"
    end
    on_intel do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.3.0/taskbaton_0.3.0_linux_amd64.tar.gz"
      sha256 "883be7d19ada26a65bf6f7c1bc7534902273895cc3a7438d1d0912bad53f9c7d"
    end
  end

  def install
    bin.install "taskbaton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskbaton --version")
  end
end
