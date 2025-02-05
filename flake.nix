{
  description = "";

  inputs.nixpkgs.url = "github:nixos/nixpkgs";

  outputs = { self, nixpkgs }:
    let
      eachSystem = nixpkgs.lib.genAttrs nixpkgs.lib.systems.flakeExposed;
      nixpkgsFor = eachSystem (system: import nixpkgs {
        inherit system;
      });
    in
    {
      packages = eachSystem (system: {
        default = nixpkgsFor."${system}".callPackage ./package.nix { };
      });
    };
}
