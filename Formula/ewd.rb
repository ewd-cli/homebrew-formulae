class Ewd < Formula
  desc "A CLI for saving and executing commands in the working directory"
  homepage "https://github.com/ewd-cli/ewd"
  url "https://github.com/ewd-cli/ewd.git", :tag => "0.1.0", :revision => "b720971f3b7f651058ac4aa5b3c70d78579ed419"
  head "https://github.com/ewd-cli/ewd.git", :shallow => false
  
  depends_on :xcode
  
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/ewd"
  end
end