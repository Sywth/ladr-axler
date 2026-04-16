# Sywth's Notes *for* Linear Algebra Done Right by Sheldon Axler

> The textbook used *"Linear Algebra Done Right (4th ed.)"* by Sheldon Axler is published Open Access under a [CC BY-NC](https://creativecommons.org/licenses/by-nc/4.0/) license. The free electronic versions is available at [linear.axler.net](https://linear.axler.net) and is [used in this repo](./ladr-book.pdf).

## Setup (Debian Only)

Install `just` (Debian/Ubuntu):
```bash
sudo apt install just
```

Now with the power of `just` we can just install all the dependencies needed to run this on a debian system.
```bash
just install-deps
```

## Commands


- `just dev` : Runs `just watch` and `just serve` as one command

- `just watch` : Watch for changes to any `.tex` file and rebuild the PDF without opening a browser

- `just serve` : Open a browser tab serving the PDF and auto-reload when the PDF changes

- `just` : Compile the full document once and exits
