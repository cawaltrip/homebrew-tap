class Crudini < Formula
  include Language::Python::Virtualenv
  
  desc "A utility for manipulating ini files"
  homepage "https://github.com/pixelb/crudini"
  url url "https://files.pythonhosted.org/packages/ec/40/9bd5195e07dd521d852c021a18b0388fe1672240d7f70aaa8800154462fe/crudini-0.9.4.tar.gz"
  sha256 "6fd0eb341b6cbd91e1883030ea9f2102c1c95619eb563af7ddabc2161e019f6b"
  license "GPL-2.0"

  depends_on "python@3.11"
  depends_on "six"

  resource "iniparse" do
    url "https://files.pythonhosted.org/packages/4c/9a/02beaf11fc9ea7829d3a9041536934cd03990e09c359724f99ee6bd2b41b/iniparse-0.5.tar.gz"
    sha256 "932e5239d526e7acb504017bb707be67019ac428a6932368e6851691093aa842"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    false
  end
end
