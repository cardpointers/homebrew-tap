class Cardpointers < Formula
  desc "CardPointers CLI — manage your credit card rewards from the terminal"
  homepage "https://cardpointers.com"
  version "1.0.7"
  url "https://github.com/cardpointers/cli/releases/download/v1.0.7/cardpointers-1.0.7.tar.gz"
  sha256 "8c99fbb8d9c758814b64532e6c520dcd4eab7637e16aab53fb53f42a8910923c"
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
