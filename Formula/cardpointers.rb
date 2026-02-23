class Cardpointers < Formula
  desc "CardPointers CLI — manage your credit card rewards from the terminal"
  homepage "https://cardpointers.com"
  version "1.0.3"
  url "https://github.com/cardpointers/cli/releases/download/v1.0.3/cardpointers-1.0.3.tar.gz"
  sha256 "32d39b765826b228d5b241dc64b1c6752fec987d8105c4aa7f984102b6349668"
  license "BUSL-1.1"

  depends_on "curl"
  depends_on "jq"

  def install
    bin.install "cardpointers"
  end

  test do
    assert_match "cardpointers", shell_output("\#{bin}/cardpointers --help")
  end
end
