{pkgs, system, ...} @ args: let
  # Import all your configuration modules here
  allImports = [
    ./bufferline.nix
    ./git.nix
    ./nix.nix
    ./plugins.nix
    ./rust.nix
    ./theme.nix
    ./tree.nix
  ];
  linuxImports = if system == "x86_64-linux" then [./tex.nix] else [];
in {
  imports = allImports ++ linuxImports;
}
