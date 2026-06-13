class Taskbaton < Formula
  desc "Pass work state between agentic tool sessions"
  homepage "https://github.com/ssthil/taskbaton"
  version "0.2.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.2.0/taskbaton_0.2.0_darwin_arm64.tar.gz"
      sha256 "d03cfd467f6d914d34c48cca2e17434d43a9ecc662fcdbe68f6e31609c2a80d4"
    end
    on_intel do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.2.0/taskbaton_0.2.0_darwin_amd64.tar.gz"
      sha256 "3f4b03c469a3d1e5c537493fd852286b3c966897cb0b0289ea6d93487b15f042"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.2.0/taskbaton_0.2.0_linux_arm64.tar.gz"
      sha256 "b06326fdf7945095d8d6f02d8c8351667afb12eacc4587b93b59d06526467d31"
    end
    on_intel do
      url "https://github.com/ssthil/taskbaton/releases/download/v0.2.0/taskbaton_0.2.0_linux_amd64.tar.gz"
      sha256 "65c26d7a050a3cd09a9a2ad96d3a8ee1ce24ee7fd8ee37465587c92b127eaa0e"
    end
  end

  def install
    bin.install "taskbaton"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/taskbaton --version")
  end
end
