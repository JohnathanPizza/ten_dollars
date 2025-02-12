#!/bin/bash

if [ "$#" -eq 0 ]; then
	exit 1
fi

name=$1

echo "./tadj.sh romprogs/$name/$name.cvm >> romprogs/$name/adj.cvm"
echo ">${name^^}_ADJUST" > romprogs/$name/adj.cvm
./tadj.sh romprogs/$name/$name.cvm >> romprogs/$name/adj.cvm
