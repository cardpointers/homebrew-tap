class Cardpointers < Formula
  desc "CardPointers CLI — manage your credit card rewards from the terminal"
  homepage "https://cardpointers.com"
  version "1.0.5"
  url "https://github.com/cardpointers/cli/releases/download/v1.0.5/cardpointers-1.0.5.tar.gz"
  sha256 "6fa5ee0605ebf2d69bf8edba5abbdd9f2b01a2b6f0bbd1c7151351d6cd422c2a"
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
