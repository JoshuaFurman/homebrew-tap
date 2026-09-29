class Openfeed < Formula
  desc "Terminal-first RSS reader"
  homepage "https://github.com/jfurman/openfeed"
  url "https://github.com/jfurman/openfeed/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "..."
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args(ldflags: "-s -w"), "./cmd/openfeed"
  end

  test do
    system "#{bin}/openfeed", "--version"
  end
end
