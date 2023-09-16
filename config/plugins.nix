{pkgs, ...} @ args: {
  extraPlugins = with pkgs.vimPlugins; [ YouCompleteMe ctrlp ];
}
