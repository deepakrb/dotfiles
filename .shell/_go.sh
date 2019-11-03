# Golang

export GOPATH=$HOME/.go
export GOROOT=/usr/local/opt/go/libexec
export PATH=$PATH:$GOPATH/bin:$GOROOT/bin

godbg() {
  gofile="$1"
  shift
  dlv debug --headless --listen=:2345 --api-version=2 "$gofile" -- "$@"
}
