# Use a base image with Nix pre-installed
FROM nixos/nix

# Enable flake support in nix
RUN nix-env -iA nixpkgs.nixFlakes

# Create a directory to work in
WORKDIR /workspace

# Copy the flake content into the Docker image
COPY . .

RUN nix build .#default --extra-experimental-features nix-command --extra-experimental-features flakes

CMD ["nix", "run", "--extra-experimental-features", "nix-command", "--extra-experimental-features", "flakes", "/workspace", "--"]
