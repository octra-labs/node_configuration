#!/bin/bash

sudo apt-get update
sudo apt-get install -y g++
sudo apt-get install -y ocaml
sudo apt-get install -y opam
opam init --disable-sandboxing
opam install -y irmin
opam install -y dune
opam install -y zarith

echo "All dependencies have been successfully installed."

mkdir -p octra/{network,storage/{data,logs},keys,crypto,account}
cd octra || exit

touch settings.config
echo "port=8080" > settings.config
echo "log_level=DEBUG" >> settings.config

openssl rand -out p_key.bin 32

echo "Folder structure created successfully."
