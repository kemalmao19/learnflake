{
  description = "kemal";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs:
    let pkgs = inputs.nixpkgs.legacyPackages.x86_64-darwin;
    in
    {
      devShells.x86_64-darwin = {
        default = pkgs.mkShell {
          buildInputs = [ ];
        };
        # python 
        python = pkgs.mkShell {
          buildInputs = [
            pkgs.python3
          ];
        };
      };
    };
}
