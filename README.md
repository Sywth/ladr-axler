# Sywth's Notes *for* Linear Algebra Done Right by Sheldon Axler

## Setup

Install `just` (Debian/Ubuntu):
```bash
sudo apt install just
```

Install all dependencies:
```bash
just install-deps
```

## Commands


- `just dev` : Runs `just watch` and `just serve` as one command

- `just watch` : Watch for changes to any `.tex` file and rebuild the PDF without opening a browser

- `just serve` : Open a browser tab serving the PDF and auto-reload when the PDF changes

- `just` : Compile the full document once and exit
