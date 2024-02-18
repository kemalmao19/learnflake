{
  description = "kemal";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
    flake-utils.url = "github:numtide/flake-utils";
  };
  outputs = inputs: inputs.flake-utils.lib.eachDefaultSystem (system:
    let
      pkgs = inputs.nixpkgs.legacyPackages.${system};
    in
    {
      devShells = {
        default = pkgs.mkShell {
          buildInputs = [ ];
        };
        # python 
        python = pkgs.mkShell {
          buildInputs = [
            pkgs.python3
          ];
        };
        nodejs = pkgs.mkShell {
          buildInputs = [ pkgs.nodejs pkgs.nodePackages.yarn pkgs.nodePackages.pnpm ];
        };
      };
    }
  );
}
