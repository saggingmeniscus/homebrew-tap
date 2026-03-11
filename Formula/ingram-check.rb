class IngramCheck < Formula
  include Language::Python::Virtualenv

  desc "Ingram Lightning Source PDF compliance checker and fixer"
  homepage "https://github.com/saggingmeniscus/ingram-check"
  url "https://files.pythonhosted.org/packages/source/i/ingram-checker/ingram_checker-0.1.3.tar.gz"
  sha256 "e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b855"
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
