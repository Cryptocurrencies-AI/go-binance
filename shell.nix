with import <nixpkgs> {};

pkgs.mkShell {
  buildInputs = [
    go
    gocode
    gopls
    go_bootstrap
    libvterm
  ];
  shellHook =''
    export GOBIN=$(pwd)/bin
    export GOPATH=$HOME/.go
  '';
}

