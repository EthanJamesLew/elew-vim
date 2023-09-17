# pull the vim plugin and return as a list
{ pkgs }: let
  myPlugins = import ./my_plugins.nix { inherit (pkgs) vimUtils fetchFromGitHub; };
in with myPlugins; [
  ripgrep
] 