{
  description = "kemal";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs: {
    devShells.x86_64-darwin.default = inputs.nixpkgs.legacyPackages.x86_64-darwin.mkShell {
      buildInputs = [ inputs.nixpkgs.legacyPackages.x86_64-darwin.python3 ];
    };
  };
}
