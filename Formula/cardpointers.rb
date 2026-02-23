class Cardpointers < Formula
  desc "CardPointers CLI — manage your credit card rewards from the terminal"
  homepage "https://cardpointers.com"
  version "1.0.4"
  url "https://github.com/cardpointers/cli/releases/download/v1.0.4/cardpointers-1.0.4.tar.gz"
  sha256 "baa628fcb0e349d90dbdaa9249285887cd6416e1da582c6d47558672049bc79d"
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
