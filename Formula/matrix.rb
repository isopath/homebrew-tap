class Matrix < Formula
  desc "A cmatrix-style text visualization tool"
  homepage "https://github.com/isopath/matrix.go"
  url "https://github.com/isopath/matrix.go/archive/refs/tags/v0.0.1-alpha.tar.gz"
  sha256 "e7f95d8f08952def59fe8336334f17fc05365d56f756e7c2cd052d1e12ea652f"
  license "MIT"

  depends_on "go" => :build

  def install
    system "go", "build", "-o", bin/"matrix", "."
  end

  test do
    system "#{bin}/matrix", "--help"
  end
end
