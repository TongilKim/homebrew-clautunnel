class Termbridge < Formula
  desc "Remote monitoring and control for Claude Code CLI"
  homepage "https://github.com/TongilKim/termbridge"
  url "https://registry.npmjs.org/@tongil_kim/termbridge/-/termbridge-0.1.5.tgz"
  sha256 "c8d3eae160a892e32837db3dcae515e843e5383fef52b8141940c8bcf8b6d59f"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", *std_npm_args
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    system "#{bin}/termbridge", "--version"
  end
end
