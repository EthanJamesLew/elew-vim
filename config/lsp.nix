{pkgs, ...} @ args: {
  # use the LSP rust-analyzer server for the checking
  plugins.lsp = {
    enable = true;
    servers = {
      rust-analyzer = {
        enable = true;
        installCargo = true;
        installRustc = true;
      };
      pylsp.enable = true;
      nixd.enable = true;
      texlab.enable = true;
      julials.enable = true;
      bashls.enable = true;
      clangd.enable = true;
      cmake.enable = true;
      hls.enable = true;
    };
  };
}
