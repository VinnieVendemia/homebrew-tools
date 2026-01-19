class Divaide < Formula
  desc "Helper script to simplify launching multiple AI Agents"
  homepage "https://github.com/vinnievendemia/divaide"
  url "https://github.com/vinnievendemia/divaide/archive/refs/tags/v0.1.8.tar.gz"
  sha256 "72fb2e0a402c7b17f8f8d685e6fa2b16dbf643005be10ea4b54d4013821a7189"
  license "MIT"

  def install
    # Install the main script
    libexec.install "bin/divaide.sh"

    # Install the wrapper
    etc.install "etc/divaide.sh"
  end

  def caveats
    <<~EOS
      To activate divaide, add the following to your shell config:
        source "$(brew --prefix)/etc/divaide.sh"
    EOS
  end

  test do
    # Simple test: run the script with --help (adjust if needed)
    system "bash", "-n", "#{libexec}/divaide.sh"
  end
end
