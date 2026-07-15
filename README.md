# Rust + Jupyter Dev Container

A lightweight, ready-to-go development container for **Rust** with the **evcxr Jupyter kernel** — perfect for interactive Rust notebooks in VS Code.

## Features

- Rust stable toolchain + `rust-analyzer`, `clippy`, `rustfmt`, `rust-src`
- evcxr Jupyter kernel (Rust support in `.ipynb` notebooks)
- Minimal Cargo project setup optimized for notebook workflows
- Based on Red Hat UBI 10 for a clean, secure foundation
- Non-root `vscode` user with sudo

## Quick Start

1. Clone / fork this repo
2. Open the folder in **VS Code**
3. Install the **Dev Containers** extension if you haven't already
4. Press <kbd>Ctrl</kbd>+<kbd>Shift</kbd>+<kbd>P</kbd> → **Dev Containers: Reopen in Container**
5. Once inside the container:
   - Create or open a `.ipynb` notebook
   - Select the **Rust** kernel from the kernel picker (top right)

## Usage Tips

- Add dependencies to `Cargo.toml` and run `cargo update` (or let the kernel handle it on first execution).
- The workspace is intentionally minimal — no heavy build artifacts by default.
- All standard Rust tools (`cargo`, `rustc`, `rust-analyzer`) are available in the terminal.
- Great for experimentation, data pipelines, algorithm prototyping, and learning Rust interactively.

## Included

- `Dockerfile` — the container definition
- `.devcontainer/devcontainer.json` — VS Code configuration
- `setup-rust-workspace.sh` — lightweight Cargo init on first run
- `exercises.ipynb` — basic "Hello World" notebook to get started

## License

MIT — feel free to use, modify, and share!

---

Happy coding! 🦀
