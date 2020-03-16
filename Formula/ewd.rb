class Ewd < Formula
  desc "A CLI for saving and executing commands in the working directory"
  homepage "https://github.com/ewd-cli/ewd"
  url "https://github.com/ewd-cli/ewd.git", :tag => "0.1.1", :revision => "08a2c2c6fb35b1fe930ae3e4d51e26b26b107022"
  head "https://github.com/ewd-cli/ewd.git", :shallow => false
  
  depends_on :xcode
  
  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/ewd"
  end
end