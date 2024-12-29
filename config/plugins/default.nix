# pull the vim plugin and return as a list
{ pkgs }: let
  myPlugins = import ./my_plugins.nix { inherit (pkgs) vimUtils fetchFromGitHub; };
in with myPlugins; [
  ripgrep
  lean
  nvim-r
  vimf90
  surround
  rust
  matlab
  clafer
  nkpl
  vim-jinja2-syntax
  plantuml-previewer
  plantuml-syntax
  open-browser
  sysmlv2
] 
