# these are plugins that vimnix doesn't have available
{pkgs, lib, ...} @ args: let
  # my vim plugin derivations
  myPlugins = import ./plugins { inherit pkgs; };

  # nixpkgs vim plugins
  externalPlugins = with pkgs.vimPlugins; [
    YouCompleteMe 
    ctrlp
    markdown-preview-nvim
    awesome-vim-colorschemes 
  ];
in {
  extraPlugins = externalPlugins ++ myPlugins;
}
