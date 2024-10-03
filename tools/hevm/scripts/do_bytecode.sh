#!/bin/sh

FILENAME="$1"

export PATH="$BIN:$PATH"

hevm symbolic --num-solvers 1 --max-iterations 10 --code $(cat $FILENAME)
