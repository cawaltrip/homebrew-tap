class Crudini < Formula
  include Language::Python::Virtualenv
  
  desc "A utility for manipulating ini files"
  homepage "https://github.com/pixelb/crudini"
  url "https://files.pythonhosted.org/packages/54/d1/0a363fbbab0aea9e27dd981a602efaf514c45f4fffceac3906274e0425c7/crudini-0.9.6.tar.gz"
  sha256 "c2af311a0833857a1449d821a312edc6109f0c2d6d81d76c2d954a76b05e6b14"
  license "GPL-2.0"

  depends_on "python"

  resource "iniparse" do
    url "https://files.pythonhosted.org/packages/4c/9a/02beaf11fc9ea7829d3a9041536934cd03990e09c359724f99ee6bd2b41b/iniparse-0.5.tar.gz"
    sha256 "932e5239d526e7acb504017bb707be67019ac428a6932368e6851691093aa842"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/94/e7/b2c673351809dca68a0e064b6af791aa332cf192da575fd474ed7d6f16a2/six-1.17.0.tar.gz"
    sha256 "ff70335d468e7eb6ec65b95b99d3a2836546063f63acc5171de367e834932a81"
  end

  def install
    virtualenv_create(libexec, "python3")
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
