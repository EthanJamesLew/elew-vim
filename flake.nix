{
  description = "elew nixvim configuration";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    nixvim,
    flake-utils,
    ...
  } @ inputs: let
    importedConfig = import ./config;
    optionsConfig = {
      config = {
        options = { 
          number = true; 
          relativenumber = true; 
          shiftwidth = 2; 
        };
        maps = {
        
        };
      };
    };
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs {inherit system;};
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = optionsConfig // (importedConfig {inherit pkgs system;});
      };
    in {
      checks = {
        # Run `nix flake check .` to verify that your config is not broken
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "elew nixvim configuration";
        };
      };
      packages = {
        # Lets you run `nix run .` to start nixvim
        default = nvim;
      };
    });
}
