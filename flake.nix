{
# Activate by running nix develop at the root of this folder
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
  };

  outputs = { self, nixpkgs }:
    let
      pkgs = import nixpkgs { system = "x86_64-linux"; };
    in {
      devShells.x86_64-linux.default = pkgs.mkShell {
        # buildInputs = [pkgs.sbt pkgs.metals];
        buildInputs = with pkgs; [
        # Needed tools go here.
        ];
      };
    };
}
