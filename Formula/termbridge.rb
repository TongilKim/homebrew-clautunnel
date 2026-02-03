class Termbridge < Formula
  desc "Remote monitoring and control for Claude Code CLI"
  homepage "https://github.com/TongilKim/termbridge"
  url "https://registry.npmjs.org/@tongil_kim/termbridge/-/termbridge-0.1.7.tgz"
  sha256 "b7deedcd6c0f64f6af879745c13efabbff8b5024cc6d6ff1448c773f4967f004"
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
