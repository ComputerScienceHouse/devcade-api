#!/bin/bash
echo "HELLO"
python3 ./TESTING/create_bucket.py
cargo test --release
