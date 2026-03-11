class IngramCheck < Formula
  include Language::Python::Virtualenv

  desc "Ingram Lightning Source PDF compliance checker and fixer"
  homepage "https://github.com/saggingmeniscus/ingram-check"
  url "https://files.pythonhosted.org/packages/source/i/ingram-checker/ingram_checker-0.1.0.tar.gz"
  sha256 "5f813ba0d6c4be19c32dffca58ac937772e4ec409452d7ca5c5c37008eaabaed"
  license "MIT"

  depends_on "python@3.13"

  # Resource stanzas will be generated after first PyPI publish:
  #   brew update-python-resources Formula/ingram-check.rb

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "Usage", shell_output("#{bin}/ingram-check --help")
  end
end
