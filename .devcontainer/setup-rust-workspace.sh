#!/usr/bin/env bash
set -euo pipefail

echo "🔧 Setting up Rust workspace if needed..."

if [[ ! -f "./Cargo.toml" ]]; then
    echo "No Cargo.toml found — initializing default workspace..."
    cargo init --name rust-notebook-workspace --vcs none
    
    cat << 'EOF' > Cargo.toml
[package]
name = "rust-notebook-workspace"
version = "0.1.0"
edition = "2021"

[dependencies]
# Add your crates here, e.g.:
# polars = { version = "0.45", features = ["lazy", "parquet"] }
# plotters = "0.3"
# tokio = { version = "1", features = ["full"] }
EOF
    cargo update
    echo "✅ Default Rust workspace initialized."
else
    echo "✅ Cargo.toml already exists — skipping init."
fi