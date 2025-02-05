Local build

```sh
$ nix build
```

Remote build

```sh
$ nix run --inputs-from . nixpkgs#gitea-actions-runner -- exec
```

---

Local debug

```sh
$ nix run --inputs-from . nixpkgs#prefetch-npm-deps package-lock.json cache.local
```

Remote debug

```sh
$ nix run --inputs-from . nixpkgs#gitea-actions-runner -- exec -E fork --container-opts "-v $PWD/cache.ci:$PWD/cache.ci"
```
