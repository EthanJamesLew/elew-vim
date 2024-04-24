{pkgs, system, ...} @ args: let
  # Import all your configuration modules here
  allImports = [
    ./bufferline.nix
    ./git.nix
    ./nix.nix
    ./extras.nix
    ./lsp.nix
    ./theme.nix
    ./tree.nix
    ./typst.nix
    ./dprint.nix
    ./tex.nix
  ];
in {
  imports = allImports;
}
