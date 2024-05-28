{lib, ...}:
let
  unicodes = import ./unicode.nix; 
 in {
  config = {
    globals = {
      # sets the map leader (instead of "\")
      mapleader = ",";

      # this is needed by vimf90 to accept the installation
      fortran_dep_install = 3;
    };

    extraConfigVim = ''
      " make sure that we're using latexmk
      let g:vimtex_compiler_method = 'latexmk'

      " match my orgmode task preferences
      let g:org_todo_keywords=['TODO', 'FEEDBACK', '|', 'DONE', 'BLOCKED', 'DELEGATED']
      
      " latexmk compilation (the important one is shell escape as it is needed for pygments minted)
      let g:vimtex_compiler_latexmk = {
        \ 'options' : [
        \    '-shell-escape',
        \    '-verbose',
        \    '-file-line-error',
        \    '-synctex=1',
        \    '-interaction=nonstopmode',
        \ ],
        \}
    '';

    opts = { 
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

      # ignore compiled files
      wildignore = "*.o,*~,*.pyc";

      # use english
      langmenu = "en";

      # default tab behavior
      tabstop=4;
      shiftwidth=4;
      expandtab=true;
    };

    keymaps = unicodes ++ [
      # custom folding/unfolding commands
      {
        mode = "n";
        key = "<space>";
        action = "za";
      }
      {
        mode = "v";
        key = "<space>";
        action = "zf";
      }

      # tab management
      {
        mode = "n";
        key = "<leader>tn";
        action = ":tabnew<cr>";
      }
      {
        mode = "n";
        key = "<leader>tc";
        action = ":tabclose<cr>";
      }
      {
        mode = "n";
        key = "<leader>to";
        action = ":tabonly<cr>";
      }
      {
        mode = "n";
        key = "<leader>t<leader>";
        action = ":tabnext<cr>";
      }
      {
        mode = "n";
        key = "<leader>te";
        action = ":tabedit<space>";
      }

      # search
      {
        mode = "n";
        key = "<leader>r";
        action = ":Rg<space>";
      }

      # fugitive git bindings
      {
        mode = "n";
        key = "<leader>ga";
        action = ":Git add %:p<CR><CR>";
      }
      {
        mode = "n";
        key = "<leader>gs";
        action = ":Git status<CR>";
      }
      {
        mode = "n";
        key = "<leader>gc";
        action = ":Git commit -v -q<CR>";
      }
      {
        mode = "n";
        key = "<leader>gt";
        action = ":Git commit -v -q %:p<CR>";
      }
      {
        mode = "n";
        key = "<leader>gd";
        action = ":Git diff<CR>";
      }
      {
        mode = "n";
        key = "<leader>ge";
        action = ":Git edit<CR>";
      }
      {
        mode = "n";
        key = "<leader>gr";
        action = ":Git restore --staged %:p<CR><CR>";
      }
      {
        mode = "n";
        key = "<leader>gw";
        action = ":Git write<CR><CR>";
      }
      {
        mode = "n";
        key = "<leader>gl";
        action = ":silent! Glog<CR>:bot copen<CR>";
      }
      {
        mode = "n";
        key = "<leader>gp";
        action = ":Git grep<Space>";
      }
      {
        mode = "n";
        key = "<leader>gm";
        action = ":Git move<Space>";
      }
      {
        mode = "n";
        key = "<leader>gb";
        action = ":Git branch<Space>";
      }
      {
        mode = "n";
        key = "<leader>go";
        action = ":Git checkout<Space>";
      }
      {
        mode = "n";
        key = "<leader>gps";
        action = ":Dispatch! git push<CR>";
      }
      {
        mode = "n";
        key = "<leader>gpl";
        action = ":Dispatch! git pull<CR>stuff";
      }
    ];
  };
}
