Local build:

```sh
$ nix build
```

Remote build

```sh
$ nix run --inputs-from . nixpkgs#gitea-actions-runner -- exec push
```
