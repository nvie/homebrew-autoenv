require 'formula'

class Autoenv < Formula
  homepage 'https://github.com/nvie/autoenv'
  url 'https://github.com/nvie/autoenv/archive/v0.1.0-nvie.tar.gz'
  sha1 '9b5a27f9f96424c7adec5867a391839862ba7407'
  version 0.1.0-nvie
  conflicts_with 'autoenv', :because => 'because this is nvie\'s fork'

  head 'https://github.com/nvie/autoenv.git', :branch => 'master'

  def install
    prefix.install "activate.sh"
  end

  def caveats; <<-EOS.undent
    To finish the installation, source activate.sh in your shell:
      source #{opt_prefix}/activate.sh
    EOS
  end
end
