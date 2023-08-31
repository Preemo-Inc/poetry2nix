{ poetry2nix, runCommand }:
let
  env = poetry2nix.mkPoetryEnv {
    projectDir = ./.;
  };
in
runCommand "jupyterlab-test" { } ''
  ${env}/bin/jupyter-lab --version > $out
''
