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
  ];
  # these imports change on the system as they fail to build on some platform targets
  linuxImports = if system == "x86_64-linux" then [ ./tex.nix ] else [ ./etex.nix ];
in {
  imports = allImports ++ linuxImports;
}
