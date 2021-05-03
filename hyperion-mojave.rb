# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HyperionMojave < Formula
  desc "SDL-Hercules-390 built for macOS"
  homepage ""
  url "https://github.com/wrljet/hyperion-mojave/archive/v0.9.1.tar.gz"
  sha256 "d5558cd419c8d46bdc958064cb97f963d1ea793866414c025906ec15033512ed"
  license ""

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    # Remove unrecognized options if warned by configure
    # https://rubydoc.brew.sh/Formula.html#std_configure_args-instance_method
    # system "cmake", "-S", ".", "-B", "build", *std_cmake_args
    puts "prefix = #{prefix}"
    puts "buildpath = #{buildpath}"
    puts "Beginning SDL-Hercules-390 Hyperion installation"
    bin.install "bin/hercules"
    prefix.install Dir["lib"]
    prefix.install Dir["share"]
    puts "Completed install"
  end
end
