#!/bin/sh

FILENAME="$1"

export PATH="$BIN:$PATH"

yml_file="output_file.yml"
state_address="0xaad62f08b3b9f0ecc7251befbeff80c9bb488fe9"
balance="0x10000"
nonce="0x1000000"

bytecode=$(cat "$FILENAME")

cat <<EOL > "$yml_file"
state:
    $state_address:
        balance: $balance
        code: $bytecode
        nonce: $nonce
victim: $state_address
EOL

ethbmc "$yml_file"
