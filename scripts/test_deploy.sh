#!/usr/bin/env bash

set -e
if [ -n "$ALCHEMY_API_KEY" ]; then
    export MAINNET_ENDPOINT="https://eth-mainnet.g.alchemy.com/v2/${ALCHEMY_API_KEY}"
else
    export MAINNET_ENDPOINT="https://eth.llamarpc.com"
fi
export CHAIN_NAME="affectionate-immediate-pollux"
export TARGET="production"

yarn hardhat run migrations/deploy.ts
