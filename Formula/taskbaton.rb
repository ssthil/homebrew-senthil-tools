class Taskbaton < Formula
  desc "Pass work state between agentic tool sessions"
  homepage "https://github.com/ssthil/taskbaton"
  version "0.1.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.1.0/taskbaton_0.1.0_darwin_arm64.tar.gz"
      sha256 "ca0a823c6da5e764331fb229681f4d9f521336df8224f7b57bc2ec5810a4afd7"
    end
    on_intel do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.1.0/taskbaton_0.1.0_darwin_amd64.tar.gz"
      sha256 "592f9650684c2630b4a19fedf3d13ec3b2127a0ac409019db3d831c074ae9ebf"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.1.0/taskbaton_0.1.0_linux_arm64.tar.gz"
      sha256 "f95c2bfb9f28096499ac6558c2a5f52ad3e2f2f35834b5ed955665e2fd6e5b04"
    end
    on_intel do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.1.0/taskbaton_0.1.0_linux_amd64.tar.gz"
      sha256 "2302591ee3ed3eebb35a066ab9fd8a6417e85acab8dad8106e40989e0bfe136e"
    end
  end

  def install
    bin.install "taskbaton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskbaton --version")
  end
end
