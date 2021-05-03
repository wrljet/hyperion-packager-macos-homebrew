# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!
class HyperionMojave < Formula
  desc "SDL-Hercules-390 built for macOS"
  homepage ""
  url "https://github.com/wrljet/hyperion-mojave/archive/v0.9.1.tar.gz"
  sha256 "719f5008f7c02e26899108e2876ecdcee032792a60555781b5297de84d78bda1"
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
    prefix.install Dir["bin"]
    prefix.install Dir["lib"]
    prefix.install Dir["share"]
    puts "Completed install"
  end
end
