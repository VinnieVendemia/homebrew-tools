class Divaide < Formula
  desc "Helper script to simplify launching multiple AI Agents"
  homepage "https://github.com/vinnievendemia/divaide"
  url "https://github.com/vinnievendemia/divaide/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "333926119151ff900aef4c0b680ad659fb39febb2cb985ed1ec7a4d27c7ecb01"
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
        source #{etc}/divaide.sh
    EOS
  end

  test do
    # Simple test: run the script with --help (adjust if needed)
    system "bash", "-n", "#{libexec}/divaide.sh"
  end
end
