{ nixpkgs ? import nix/nixpkgs }:

let
    rust = nixpkgs.rustChannelOf {
        date = "2022-04-06";
        channel = "nightly";
        sha256 = "1jviyb0h3w0i963y38i63g1ddf0v1j4g8b3ijn96l0a518xb7qdw";
    };
in
    nixpkgs.mkShell {
        nativeBuildInputs = [
            nixpkgs.cacert  # Used by cargo.
            rust.rust
        ];
    }
