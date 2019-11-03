# Golang

export GOPATH=$HOME/.go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

gdbg() {
  local first="$1"
  shift
  dlv debug --headless --listen=:2345 --api-version=2 "$first" -- "$@"
}
