{pkgs, lib, ...} @ args: {
  extraPlugins = with pkgs.vimPlugins; [ vimtex ];
}
