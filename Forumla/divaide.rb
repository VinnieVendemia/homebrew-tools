class Divaide < Formula
  desc "Helper script to simplify launching multiple AI Agents"
  homepage "https://github.com/vinnievendemia/divaide"
  url "https://github.com/vinnievendemia/divaide/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "770f681625a68a3e32e67ee17f2aacedafa7e0dc259fc811ba3bdbe917f62309"
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
