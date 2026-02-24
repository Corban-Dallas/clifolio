#!/usr/bin/env bash

mkdir -p dist

# Skip if no Cargo.toml (not a Rust project)
if [ ! -f "Cargo.toml" ]; then
  echo "Skipping: no Cargo.toml found"
  exit
fi

# Skip if no index.html (not a web example)  
if [ ! -f "index.html" ]; then
  echo "Skipping: no index.html found"
  exit
fi

echo "Building..."

trunk build --release --public-url https://corban-dallas.github.io/clifolio/
# cp -r dist/* ../../dist/"$example_name"
