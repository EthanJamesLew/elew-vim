{
  description = "elew nixvim configuration";

  inputs = {
    nixvim.url = "github:nix-community/nixvim";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = { nixpkgs, nixvim, flake-utils, ... } @ inputs: let
    importedConfig = import ./config;
    importedDockerConfig = import ./docker_config;
    optionsConfig = import ./keymaps.nix { lib = nixpkgs.lib; };
  in
    flake-utils.lib.eachDefaultSystem (system: let
      nixvimLib = nixvim.lib.${system};
      pkgs = import nixpkgs { inherit system; };
      nixvim' = nixvim.legacyPackages.${system};
      nvim = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = optionsConfig // (importedConfig { inherit pkgs system; });
      };
      nvim-docker = nixvim'.makeNixvimWithModule {
        inherit pkgs;
        module = optionsConfig // (importedDockerConfig { inherit pkgs system; });
      };
      dockerImage = pkgs.dockerTools.buildImage {
        name = "elew-vim";
        tag = "latest";
        copyToRoot = [ nvim-docker ];
        config = {
          Cmd = [ "${nvim-docker}/bin/nvim" ];
        };
      };
      nvimJSON = pkgs.writeText "nvim-config.json" (builtins.toJSON nvim);
    in {
      checks = {
        default = nixvimLib.check.mkTestDerivationFromNvim {
          inherit nvim;
          name = "elew nixvim configuration";
        };
      };
      packages = {
        inherit dockerImage;
        default = nvim;
        nvimJSON = nvimJSON;
      };
    });
}

