{ lib
, buildNpmPackage
}:
let
  package-json = builtins.fromJSON (builtins.readFile ./package.json);
in
buildNpmPackage {
  pname = package-json.name;
  version = package-json.version;
  src = lib.cleanSource ./.;

  dontNpmBuild = true;

  npmDepsHash = "sha256-OLfCtrq0QI0kKcv/n67iT+zdTfiUJe+jqACU6GT4sv8=";
  makeCacheWritable = true;
}
