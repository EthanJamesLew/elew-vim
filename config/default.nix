{pkgs, ...} @ args: {
  # Import all your configuration modules here
  imports = [
    ./bufferline.nix
    ./git.nix
    ./nix.nix
    ./rust.nix
    ./theme.nix
    ./tree.nix
  ];
}
