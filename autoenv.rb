require 'formula'

class Autoenv < Formula
  homepage 'https://github.com/nvie/autoenv'
  url 'https://github.com/nvie/autoenv/archive/v0.1.0-nvie.tar.gz'
  sha1 '48380af4d8a4cbb6627e136bc3aeeedc'

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
