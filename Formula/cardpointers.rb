class Cardpointers < Formula
  desc "CardPointers CLI — manage your credit card rewards from the terminal"
  homepage "https://cardpointers.com"
  version "0.0.0"
  url "https://github.com/cardpointers/cli/releases/download/v#{version}/cardpointers-#{version}.tar.gz"
  sha256 "INSERT_SHA256_HERE"
  license "BUSL-1.1"

  depends_on "curl"
  depends_on "jq"

  def install
    bin.install "cardpointers"
  end

  test do
    assert_match "cardpointers", shell_output("#{bin}/cardpointers --help")
  end
end
