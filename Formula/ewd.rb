class Ewd < Formula
  desc "A CLI for saving and executing commands in the working directory"
  homepage "https://github.com/ewd-cli/ewd"
  url "https://github.com/ewd-cli/ewd.git", :tag => "0.1.2", :revision => "1ad81dd32ff54096b31a77cd5877e4f63288ac01"
  head "https://github.com/ewd-cli/ewd.git", :shallow => false
  
  depends_on :xcode
  
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/ewd"
    zsh_completion.install "zsh_completion/_ewd"
  end
end