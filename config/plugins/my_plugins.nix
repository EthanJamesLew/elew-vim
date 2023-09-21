{ vimUtils, fetchFromGitHub }:
{
  ripgrep = vimUtils.buildVimPluginFrom2Nix {
    name = "vim-ripgrep-2021-11-30";
    src = fetchFromGitHub {
      owner = "jremmen";
      repo = "vim-ripgrep";
      rev = "2bb2425387b449a0cd65a54ceb85e123d7a320b8";
      sha256 = "sha256-OvQPTEiXOHI0uz0+6AVTxyJ/TUMg6kd3BYTAbnCI7W8=";
    };
    dependencies = [];
  };

  lean = vimUtils.buildVimPluginFrom2Nix {
    name = "lean-2023-09-17";
    src = fetchFromGitHub {
      owner = "Julian";
      repo = "lean.nvim";
      rev = "ad8305e07dd6226724e87607c9c5a8331bb3f62e";
      sha256 = "sha256-vhUF1Hj6itbVFG0SuIdGuAo35+M9WjKtjpaqVnuqKeE=";
    };
    dependencies = [];
  };
  
  nvim-r = vimUtils.buildVimPluginFrom2Nix {
    name = "lean-2023-09-17";
    src = fetchFromGitHub {
      owner = "jalvesaq";
      repo = "Nvim-R";
      rev = "d8f7588fda8d06e8005252178c872e169e96ce1c";
      sha256 = "sha256-As8RqjIal5XGq57y9nRm7dIr+0W8PHJf/T6e7/b0iuw=";
    };
    dependencies = [];
  };
  
  vimf90 = vimUtils.buildVimPluginFrom2Nix {
    name = "vimf90-2023-09-17";
    src = fetchFromGitHub {
      owner = "rudrab";
      repo = "vimf90";
      rev = "1f85c0a7bcf23c142408015413bd4822815b28fe";
      sha256 = "sha256-GdKNnsM7u0abXy74AIvwb6TV8fFdY/niXd7tpvDGyaM=";
    };
    dependencies = [];
  };
  
  surround = vimUtils.buildVimPluginFrom2Nix {
    name = "surround-2023-09-17";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-surround";
      rev = "3d188ed2113431cf8dac77be61b842acb64433d9";
      sha256 = "sha256-DZE5tkmnT+lAvx/RQHaDEgEJXRKsy56KJY919xiH1lE=";
    };
    dependencies = [];
  };
  
  rust = vimUtils.buildVimPluginFrom2Nix {
    name = "rust-2023-09-17";
    src = fetchFromGitHub {
      owner = "rust-lang";
      repo = "rust.vim";
      rev = "889b9a7515db477f4cb6808bef1769e53493c578";
      sha256 = "sha256-70kp644jOtJ4wguty/SUFX+YEsoxW12LGg3vZh7BdPY=";
    };
    dependencies = [];
  };
  
  markdown-preview = vimUtils.buildVimPluginFrom2Nix {
    name = "markdown-preview-2023-09-20";
    src = fetchFromGitHub {
      owner = "iamcco";
      repo = "markdown-preview.nvim";
      rev = "02cc3874738bc0f86e4b91f09b8a0ac88aef8e96";
      sha256 = "e1Buvu/lkEt9V5LVDFKWTasnSX6EdtRgWyVDZA8LpUE=";
    };
    dependencies = [];
  };
}
