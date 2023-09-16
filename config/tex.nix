{pkgs, lib, ...} @ args: {
  plugins.vimtex = {
    enable = true;
  };
  extraPackages = with pkgs; lib.filter (pkg: pkg != pkgs.xdotool) extraPackages;
}
