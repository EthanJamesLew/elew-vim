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

  hexmode = vimUtils.buildVimPluginFrom2Nix {
    name = "hexmode-2016-11-04";
    src = fetchFromGitHub {
      owner = "fidian";
      repo = "hexmode";
      rev = "27932330b9a36c91a6039267bc32a18060e82d57";
      sha256 = "00xdv6d3rmalv342ajqd7cgbci97frd7pmsrgfnaqcfimycka3la";
    };
    dependencies = [];
  };
}
