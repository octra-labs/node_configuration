# node_configuration
Settings and scripts for deploying and installing nodes.

Step 1:

```wget https://raw.githubusercontent.com/octra-labs/node_configuration/refs/heads/main/env.sh```

```chmod +x env.sh```

```./env.sh```

Step 2:

```wget https://raw.githubusercontent.com/octra-labs/node_configuration/refs/heads/main/config.ml```

```eval $(opam env)```

```opam switch show```

```opam switch list```

```opam switch set 5.2.1```

```eval $(opam env)```

```opam install ocamlfind lwt_ppx```

```opam reinstall yojson```

```ocamlfind ocamlopt -o config -thread -linkpkg -package yojson,cohttp-lwt-unix,unix,str,lwt_ppx config.ml```

```./config```
