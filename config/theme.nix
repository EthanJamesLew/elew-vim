{pkgs, ...} @ args: {
  plugins.telescope = {
    enable = true;
  };

  plugins.lightline = {
    enable = true;

    # redo the status line
    active = {
      left = [
        ["mode" "paste"]
        ["readonly" "filename" "modified"]
      ];

      right = [ 
        [ "lineinfo" ]
        [ "percent" ]
        [ "fileformat" "fileencoding" "filetype" "charvaluehex" ]
        [ "git" ]
      ];
    };

    component = {
      git = "%{fugitive#statusline()}";
    };
  };
  
  colorschemes.catppuccin = {
    enable = true;
    flavour = "latte";
  };
}
