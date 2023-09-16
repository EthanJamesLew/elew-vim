## README

### Overview
This repository contains a personal Vim configuration using `nixvim`. It can be executed as a Nix flake or within a Docker container.

### Running the Configuration

#### Nix Flake
Execute:
```
nix run .
```

#### Docker
First, ensure the Docker image is built:
```
./vim.sh
```
This script builds (if necessary) and runs the Vim configuration in a Docker container.

### Features

- **Themes:** Configured with multiple aesthetic themes.
- **Airline:** Enhanced status/tabline.
- **YouCompleteMe:** Code-completion engine.
- **Rust LSP:** Language Server Protocol support for Rust.
- **Git:** Integrated Git functionality.
- **Vimtex:** Support for LaTeX including compiling and viewing.

Adjust and extend as per your specific setup and feature nuances.
