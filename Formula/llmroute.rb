class Llmroute < Formula
  desc "A native, multi-LLM routing proxy CLI"
  homepage "https://github.com/ssthil/llmroute"
  version "0.4.2"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/ssthil/llmroute/releases/download/v0.4.2/llmroute_0.4.2_darwin_arm64.tar.gz"
      sha256 "f3f793a00a0b8d17fa543a7388203acd05801d1451372c7e729764fac9db684d"
    end
    on_intel do
      url "https://github.com/ssthil/llmroute/releases/download/v0.4.2/llmroute_0.4.2_darwin_amd64.tar.gz"
      sha256 "b93e2acc1b9ffcf80a871a41b825045a24cdf08b62a82167adbeddda9d9a2e54"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/ssthil/llmroute/releases/download/v0.4.2/llmroute_0.4.2_linux_arm64.tar.gz"
      sha256 "afef1de5e38a866ae24aeab5a75de4b9e037ff60a7c114b0a9d822395775b7dd"
    end
    on_intel do
      url "https://github.com/ssthil/llmroute/releases/download/v0.4.2/llmroute_0.4.2_linux_amd64.tar.gz"
      sha256 "45e8d98ed07cb86843e1c7f805d4a06ffc5067b8a5bc72a74f824fc35c4d75cc"
    end
  end

  def install
    bin.install "llmroute"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/llmroute --version")
  end
end
