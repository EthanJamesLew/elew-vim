{pkgs, lib, isDocker, ...} @ args: {
  plugins.vimtex = {
    enable = true;
    texlivePackage = pkgs.texlive.combined.scheme-full;
  };
}
