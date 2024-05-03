{pkgs, system, ...} @ args: let
  # Import all your configuration modules here
  allImports = [
    ../config/bufferline.nix
    ../config/git.nix
    ../config/nix.nix
    ../config/theme.nix
    ../config/tree.nix
    ../config/dprint.nix
  ];
in {
  imports = allImports;
}
