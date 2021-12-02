{ nixpkgs ? import nix/nixpkgs }:

let
    rust = nixpkgs.rustChannelOf {
        date = "2021-12-02";
        channel = "stable";
    };
in
    nixpkgs.mkShell {
        nativeBuildInputs = [
            nixpkgs.cacert  # Used by cargo.
            rust.rust
        ];
    }
