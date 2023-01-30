require "json"

class Cartool < Formula
  def self.homepage_url
    "https://github.com/showxu/cartools"
  end

  def self.tag
    "1.0.0-alpha"
  end

  def self.file_path
    "cartool-#{tag}.bigsur.bottle.tar.gz"
  end
  
  def self.download_url
    "#{homepage_url}/releases/download/#{tag}/#{file_path}"
  end

  def self.sha256_checksum
    "8c0e6883c8e256639d4252803b2601ac63b5ee461a8a703598a83f9dc20f10c3"
  end

  desc "CLI tool to extract Apple compiled asset catalogs (.car files).  Requires XCode (not just the command line tools) to be installed."
  homepage homepage_url
  url download_url
  sha256 sha256_checksum
  license "MIT"

  def install
    
    bin.install "cartool"
  end

  test do
    system "#{bin}/cartool", "-h"
  end
end
