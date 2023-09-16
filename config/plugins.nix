{pkgs, lib, ...} @ args: {
  extraPlugins = with pkgs.vimPlugins; [ YouCompleteMe ctrlp ];
}
