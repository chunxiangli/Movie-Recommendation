#!/bin/bash

hash curl 2>/dev/null || { echo >&2 "curl required. Aborting."; exit 1; }
hash unzip 2>/dev/null || { echo >&2 "unzip required. Aborting."; exit 1; }

curl -O http://files.grouplens.org/datasets/movielens/ml-20m.zip
# Small data
#curl -O http://files.grouplens.org/datasets/movielens/ml-latest-small.zip
unzip -o "ml-20m.zip"
rm ml-20m.zip
DESTINATION="./datasets/"
mkdir -p $DESTINATION
mv ml-20m $DESTINATION
