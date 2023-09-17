# Record path to nix executable.
nix_binary_path=$(readlink -f $(which nix))

# Record index of nix installation in profile.
nix_profile_index=$(nix profile list --extra-experimental-features nix-command --extra-experimental-features flakes | grep $(echo $nix_binary_path --extra-experimental-features nix-command --extra-experimental-features flakes | sed 's|^/nix/store/\([^/]*\)/.*$|\1|g') | cut -d ' ' -f 1)

# Remove the symbolic link to the nix executable.
nix profile remove $nix_profile_index --extra-experimental-features nix-command --extra-experimental-features flakes

# Install the latest nix release.
$nix_binary_path profile install nixpkgs#nix --extra-experimental-features nix-command --extra-experimental-features flakes

# Display the new nix version.
nix --version
