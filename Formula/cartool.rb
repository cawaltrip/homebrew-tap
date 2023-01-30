require "json"

class Cartool < Formula
  def self.homepage_url
    "https://github.com/showxu/cartools"
  end

  def self.tag
    "1.0.0-alpha"
  end

  def self.file_path
    "#{tag}.tar.gz"
  end

  def self.download_url
    "#{homepage_url}/archive/#{file_path}"
  end

  def self.sha256_checksum
    "41452585225fb48b56abc26dcf91b86e537616b520e8da67d8f349947a0db11d"
  end

  desc "CLI tool to extract Apple compiled asset catalogs (.car files).  Requires XCode (not just the command line tools) to be installed."
  homepage "https://github.com/showxu/cartools"
  url download_url
  sha256 sha256_checksum
  license "MIT"

  depends_on xcode: "12.0"

  def install
    system "xcodebuild
            -resolvePackageDependencies"

    system "xcodebuild
            -project Cartools.xcodeproj
            -scheme cartool
            -configuration Release
            -arch x86_64
            -sdk macosx
            -derivedDataPath .build"

    bin.install ".build/Build/Products/Release/cartool"
  end

  test do
    system "#{bin}/cartool", "-h"
  end
end
