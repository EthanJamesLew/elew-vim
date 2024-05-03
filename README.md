## README

### Overview
This repository contains a personal Vim configuration using `nixvim`. It can be executed as a Nix flake or within a Docker container.

### Running the Configuration

The preferred method to install this vim is via nix profile (there is no need to clone the repo)

```shell
nix profile install github:EthanJamesLew/elew-vim
```

#### Nix Flake
Execute:
```
nix run .
```

#### Docker
First, ensure the Docker image is built:
```shell
nix build .#dockerImage
docker load < result
```

Run the image on the current directory
```shell
docker run -v $PWD:/workspace -w /workspace -it elew-vim:latest
```

