{ vimUtils, fetchFromGitHub }:
{
  ripgrep = vimUtils.buildVimPlugin {
    name = "vim-ripgrep-2021-11-30";
    src = fetchFromGitHub {
      owner = "jremmen";
      repo = "vim-ripgrep";
      rev = "2bb2425387b449a0cd65a54ceb85e123d7a320b8";
      sha256 = "sha256-OvQPTEiXOHI0uz0+6AVTxyJ/TUMg6kd3BYTAbnCI7W8=";
    };
    dependencies = [];
  };

  lean = vimUtils.buildVimPlugin {
    name = "lean-2023-09-17";
    src = fetchFromGitHub {
      owner = "Julian";
      repo = "lean.nvim";
      rev = "ad8305e07dd6226724e87607c9c5a8331bb3f62e";
      sha256 = "sha256-vhUF1Hj6itbVFG0SuIdGuAo35+M9WjKtjpaqVnuqKeE=";
    };
    dependencies = [];
  };
  
  nvim-r = vimUtils.buildVimPlugin {
    name = "lean-2023-09-17";
    src = fetchFromGitHub {
      owner = "jalvesaq";
      repo = "Nvim-R";
      rev = "d8f7588fda8d06e8005252178c872e169e96ce1c";
      sha256 = "sha256-As8RqjIal5XGq57y9nRm7dIr+0W8PHJf/T6e7/b0iuw=";
    };
    dependencies = [];
  };
  
  vimf90 = vimUtils.buildVimPlugin {
    name = "vimf90-2023-09-17";
    src = fetchFromGitHub {
      owner = "rudrab";
      repo = "vimf90";
      rev = "1f85c0a7bcf23c142408015413bd4822815b28fe";
      sha256 = "sha256-GdKNnsM7u0abXy74AIvwb6TV8fFdY/niXd7tpvDGyaM=";
    };
    dependencies = [];
  };
  
  surround = vimUtils.buildVimPlugin {
    name = "surround-2023-09-17";
    src = fetchFromGitHub {
      owner = "tpope";
      repo = "vim-surround";
      rev = "3d188ed2113431cf8dac77be61b842acb64433d9";
      sha256 = "sha256-DZE5tkmnT+lAvx/RQHaDEgEJXRKsy56KJY919xiH1lE=";
    };
    dependencies = [];
  };
  
  rust = vimUtils.buildVimPlugin {
    name = "rust-2023-09-17";
    src = fetchFromGitHub {
      owner = "rust-lang";
      repo = "rust.vim";
      rev = "889b9a7515db477f4cb6808bef1769e53493c578";
      sha256 = "sha256-70kp644jOtJ4wguty/SUFX+YEsoxW12LGg3vZh7BdPY=";
    };
    dependencies = [];
  };
  
  matlab = vimUtils.buildVimPlugin {
    name = "matlab-2023-12-10";
    src = fetchFromGitHub {
      owner = "daeyun";
      repo = "vim-matlab";
      rev = "eafe639be77454b6bf46f149a7695de773b702b9";
      sha256 = "sha256-zDiPIQp5E8Iv2ZH7ZHTKGVspX44lclLc4q/kDN8ihVE=";
    };
    dependencies = [];
  };

  clafer = vimUtils.buildVimPlugin {
    name = "clafer-2024-02-23";
    src = fetchFromGitHub {
      owner = "wasowski";
      repo = "clafer-vim";
      rev = "037a5c01c470e8f2dfee7c1b0ac49b3c57e06090";
      sha256 = "sha256-3/jqpZW0TPhnAcDvvLO09s3oKAwAqVhoBU0e19edAmk=";
    };
    dependencies = [];
  };
  
  nkpl = vimUtils.buildVimPlugin {
    name = "nkpl-2024-04-22";
    src = fetchFromGitHub {
      owner = "EthanJamesLew";
      repo = "nkpl-vim";
      rev = "61faf78ab3d012f2f2487b53f8d5692b5a0419fa";
      sha256 = "HxN+Rf5QIbwUyc0mcBkxLl/5CK8vG5u2mtU4GfkiRYw=";
    };
    dependencies = [];
  };

  vim-jinja2-syntax = vimUtils.buildVimPlugin {
    name = "vim-jina2-syntax-2024-05-05";
    src = fetchFromGitHub {
      owner = "Glench"; 
      repo = "Vim-Jinja2-Syntax";
      rev = "2c17843b074b06a835f88587e1023ceff7e2c7d1";
      sha256 = "sha256-57kZn10XBpCRRXsFSSEIUngdIJSj3cmNQHnkObj+ro4=";
    };
  };

  plantuml-previewer = vimUtils.buildVimPlugin {
    name = "plantuml-previewer-2024-10-23";
    src = fetchFromGitHub {
      owner = "weirongxu";
      repo = "plantuml-previewer.vim";
      rev = "555347700382c97b347bace57b7a9f764ed556b1";
      sha256 = "sha256-eKtTNN0pVaeSbUXd1Mz+igHjFDnCEP043eFw1dY3nW4=";
    };
  };

  plantuml-syntax = vimUtils.buildVimPlugin {
    name = "plantuml-syntax-2024-10-23";
    src = fetchFromGitHub {
      owner = "aklt";
      repo = "plantuml-syntax";
      rev = "9d4900aa16674bf5bb8296a72b975317d573b547";
      sha256 = "sha256-qmo5xI7Vugtsbl95RW2Pnu6cDei1Xz7Pq06HrrwPpI4=";
    };
  };

  open-browser = vimUtils.buildVimPlugin {
    name = "open-browser-2024-10-23";
    src = fetchFromGitHub {
      owner = "tyru";
      repo = "open-browser.vim";
      rev = "7d4c1d8198e889d513a030b5a83faa07606bac27";
      sha256 = "sha256-9QZgTv8W0BFlF0lsH1BPPAzjD6iXWXHXZf2zpouQH2s=";
    };
  };

  sysmlv2 = vimUtils.buildVimPlugin {
    name = "sysmlv2-2024-10-23";
    src = fetchFromGitHub {
      owner = "EthanJamesLew";
      repo = "sysmlv2.nvim";
      rev = "b584b87e9d56a55d6fe9e01add27ace66748409c";
      sha256 = "sha256-c0oOeHIzbT6sncEmi9BSfuCBFsY0ECcLQjjE7p7c8ps=";
    };
  };

  nvim-treesitter = vimUtils.buildVimPlugin {
    name = "nvim-treesitter-2024-10-23";
    src = fetchFromGitHub {
      owner = "nvim-treesitter";
      repo = "nvim-treesitter";
      rev = "46be785e7110e6039b2a8227b574c628cbcae1a6";
      sha256 = "sha256-pq9Sl0MOicrgJv5Kd+jqfFWLaCXERF1ys/EkXzg7Jeo=";
    };
  };
}
