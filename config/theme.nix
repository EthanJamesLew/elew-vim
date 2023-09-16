
{pkgs, ...} @ args: {
  plugins.telescope = {
    enable = true;
  };

  plugins.lightline = {
    enable = true;
  };
  
  colorschemes.catppuccin = {
    enable = true;
    flavour = "latte";
  };

  extraPlugins = with pkgs.vimPlugins; [ YouCompleteMe ];
}
