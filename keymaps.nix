{
  config = {
    options = { 
      # display relative numbers on the side
      number = true; 
      relativenumber = true;

      # display current position
      ruler = true;

      # wrap lines
      wrap = true;
      ai = true;
      si = true;
      
      # this will fold the code on open
      # foldmethod = "indent";
    };
    maps = {
      # custom folding/unfolding commands
      normal."<space>" = {
        action = "za";
      };
      visual."<space>" = {
        action = "zf";
      };

      # tab management
      normal."<leader>tn" = {
        action = ":tabnew<cr>";
      };
      normal."<leader>tc" = {
        action = ":tabclose<cr>";
      };
      normal."<leader>to" = {
        action = ":tabonly<cr>";
      };
      normal."<leader>t<leader>" = {
        action = ":tabnext<cr>";
      };
      normal."<leader>te" = {
        action = ":tabedit<space>";
      };

      # search
      normal."<leader>r" = {
        action = ":Rg<space>";
      };

      # fugitive git bindings
      normal."<leader>ga" = {
        action = ":Git add %:p<CR><CR>";
      };
      normal."<leader>gs" = {
        action = ":Gstatus<CR>";
      };
      normal."<leader>gc" = {
        action = ":Gcommit -v -q<CR>";
      };
      normal."<leader>gt" = {
        action = ":Gcommit -v -q %:p<CR>";
      };
      normal."<leader>gd" = {
        action = ":Gdiff<CR>";
      };
      normal."<leader>ge" = {
        action = ":Gedit<CR>";
      };
      normal."<leader>gr" = {
        action = ":Gread<CR>";
      };
      normal."<leader>gw" = {
        action = ":Gwrite<CR><CR>";
      };
      normal."<leader>gl" = {
        action = ":silent! Glog<CR>:bot copen<CR>";
      };
      normal."<leader>gp" = {
        action = ":Ggrep<Space>";
      };
      normal."<leader>gm" = {
        action = ":Gmove<Space>";
      };
      normal."<leader>gb" = {
        action = ":Git branch<Space>";
      };
      normal."<leader>go" = {
        action = ":Git checkout<Space>";
      };
      normal."<leader>gps" = {
        action = ":Dispatch! git push<CR>";
      };
      normal."<leader>gpl" = {
        action = ":Dispatch! git pull<CR>stuff";
      };
    };
  };
}
