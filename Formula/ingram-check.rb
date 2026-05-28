class IngramCheck < Formula
  include Language::Python::Virtualenv

  desc "Ingram Lightning Source PDF compliance checker and fixer"
  homepage "https://github.com/saggingmeniscus/ingram-check"
  url "https://files.pythonhosted.org/packages/source/i/ingram-checker/ingram_checker-0.1.5.tar.gz"
  sha256 "462c09dd05187476306c4e824c8b0586bed8bb00172d54f2d6436a22b00190bb"
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
