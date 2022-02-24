{ nixpkgs ? import nix/nixpkgs }:

let
    rust = nixpkgs.rustChannelOf {
        date = "2022-02-24";
        channel = "nightly";
        sha256 = "13sawwb4yn3akj68s59ba1hrqi4lr59ihdis0mvbbcq4p934m4jf";
    };
in
    nixpkgs.mkShell {
        nativeBuildInputs = [
            nixpkgs.cacert  # Used by cargo.
            rust.rust
        ];
    }
