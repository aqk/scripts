#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "Usage: $0 [options] <args>"
    exit 1
fi

# Not foolproof - use pwd?
my_path=`which $0 `
dir_script_in=`dirname ${my_path}`

while [ $# -gt 0 ]; do
    case $1 in
        -x)
            set -x
            ;;
    esac
    shift
done

###### Script starts here
