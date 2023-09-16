{pkgs, ...} @ args: {
  # formatting and tools
  plugins.rust-tools = {
    enable = true;
  };

  # use the LSP rust-analyzer server for the checking
  plugins.lsp = {
    enable = true;
    enabledServers = [
      "rust_analyzer"
      "pylsp"
      "nixd"
      "ltex"
      "julials"
      "bashls"
      "clangd"
      "cmake"
    ];
    keymaps.lspBuf = {
      "gd" = "definition";
      "gD" = "references";
      "gt" = "type_definition";
      "gi" = "implementation";
      "K" = "hover";
    };  
  };
}
