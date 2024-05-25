{
  description = "Empty Template";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };

  outputs = {
    nixpkgs,
    flake-utils,
    ...
  }:
    flake-utils.lib.eachDefaultSystem (
      system: let
        pkgs = import nixpkgs {inherit system;};
      in {
        devShells.default = pkgs.mkShell {
          # Tools and packages required at build-time on the build platform
          nativeBuildInputs = with pkgs; [
            # e.g., cmake, pkg-config
          ];

          # Libraries and packages required at build-time on the target platform
          buildInputs = with pkgs; [
            # e.g., zlib, openssl
          ];

          # General packages to be included in the development environment
          packages = with pkgs; [
            # e.g., vim, git
          ];
        };
      }
    );
}
