#!/bin/sh

sed -r -n -i "
/_RUNTIME = .*/ {
  i _RUNTIME = \"\"\"
  n
  :foo
  /^:.*/ {
    n
    b foo
  }
  h
  r $1
  g
  N
}
p
" uflash.py
