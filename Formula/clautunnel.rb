class Clautunnel < Formula
  desc "Remote monitoring and control for Claude Code CLI"
  homepage "https://github.com/TongilKim/ClauTunnel"
  url "https://registry.npmjs.org/@tongil_kim/clautunnel/-/clautunnel-1.3.5.tgz"
  sha256 "PLACEHOLDER"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/clautunnel", "--version"
  end
end
