{ nixpkgs ? import nix/nixpkgs }:

let
    rust = nixpkgs.rustChannelOf {
        date = "2022-01-20";
        channel = "nightly";
        sha256 = "153vg6nmiya6pykqnn9r7dzzl1cq77l7kri7c2k8v78mi69hqbwq";
    };
in
    nixpkgs.mkShell {
        nativeBuildInputs = [
            nixpkgs.cacert  # Used by cargo.
            rust.rust
        ];
    }
