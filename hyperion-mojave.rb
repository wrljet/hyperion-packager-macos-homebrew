# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
#<hyperion-mojave_header>
# url: 
# git: www.github.com/wrljet/hyperion-mojave
# org:
# author: Kishore Reddy
# copyright:
# license: refer to website and/or github
# about:
#</hyperion-mojave_header>
class Hyperion < Formula
  desc ""
  homepage "https://sdl-hercules-390.github.io/html/"
  
  url "https://github.com/hyperion-mojave/hyperion-mojave/archive/v0.9.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license "MIT"

  # ...

  def install
    puts "prefix = #{prefix}"
    puts "buildpath = #{buildpath}"
    puts "Beginning SDL-Hercules-390 Hyperion installation"
    # bin.install 'bin/hercules'
    prefix.install Dir["bin"]
    prefix.install Dir["lib"]
    prefix.install Dir["share"]
    puts "Completed install"
  end
end
