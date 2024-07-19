class Kimika < Formula
  desc "CLI tool for sending text or files based on grpc"
  homepage "https://github.com/yixiaojiu/kimika"
  license "MIT"

  # Conditional URL and checksum based on CPU architecture
  if Hardware::CPU.intel?
    url "https://github.com/yixiaojiu/kimika/releases/download/v0.1.0/kimika-x86_64-apple-darwin.tar.gz"
    sha256 "b86eae1fe2b0eb78d8ec8241c3daba5089282b5ffe4e22f27c00cffe14076cde"
  elsif Hardware::CPU.arm?
    url "https://github.com/yixiaojiu/kimika/releases/download/v0.1.0/kimika-aarch64-apple-darwin.tar.gz"
    sha256 "efb810d207df4b22c32fdbe5e366b4a5cca62a9abea6e0e3e62c3a25343a0aa5"
  end

  def install
    bin.install "kimika"
  end

  test do
    system "#{bin}/kimika", "--version"
  end
end
