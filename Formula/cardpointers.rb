class Cardpointers < Formula
  desc "CardPointers CLI — manage your credit card rewards from the terminal"
  homepage "https://cardpointers.com"
  version "1.0.6"
  url "https://github.com/cardpointers/cli/releases/download/v1.0.6/cardpointers-1.0.6.tar.gz"
  sha256 "33d994cb18672945693520adb06c97ac26f93442fe5af001ad8d8b9ca46a306e"
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
