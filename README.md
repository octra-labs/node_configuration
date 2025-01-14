# node_configuration
Settings and scripts for deploying and installing nodes.

## Step 1 Prepare environment:

```shell
git clone https://github.com/octra-labs/node_configuration.git
cd node_configuration
chmod +x env.sh
./env.sh
```

## Step 2 Generate root hash (validators only):

**⚠️⚠️ Accepting new validators currently is paused. Wait for announcement ⚠️⚠️**

```shell
ocamlfind ocamlopt -o config -thread -linkpkg -package yojson,cohttp-lwt-unix,unix,str,lwt_ppx config.ml
./config
```

## Step 3 Generate wallet address:

```shell
git clone https://github.com/octra-labs/wallet-gen.git
cd wallet-gen
eval $(opam env)
opam install . --deps-only --yes
dune build --profile release
dune exec ./bin/main.exe
```
