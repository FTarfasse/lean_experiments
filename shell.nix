{ pkgs ? import <nixpkgs> {} }:

with pkgs;

mkShell {
  name = "lean-base-env";
  buildInputs = [
    neovim
    lean4
    elan
  ];

shellHook=''
  elan default leanprover/lean4:stable
'';
}

