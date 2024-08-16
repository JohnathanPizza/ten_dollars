#!/bin/bash

name=$1

echo "./tadj.sh romprogs/$name/$name.cvm >> romprogs/$name/adj.cvm"
echo ">${name^^}_ADJUST" > romprogs/$name/adj.cvm
./tadj.sh romprogs/$name/$name.cvm >> romprogs/$name/adj.cvm
