latexmk := "latexmk -pdf -interaction=nonstopmode -output-directory=build"

# Install all dependencies (Debian/Ubuntu)
install-deps:
    sudo apt update
    sudo apt install -y texlive-full latexmk wslu nodejs npm
    sudo npm install -g browser-sync

# Compile full book
default:
    mkdir -p build
    {{latexmk}} main.tex

# Watch main.tex and recompile on save
watch:
    mkdir -p build
    latexmk -pdf -pvc -output-directory=build main.tex

# Serve PDFs in browser with auto-refresh on recompile (run alongside `just watch`)
serve:
    browser-sync start --server --files "build/*.pdf" --no-notify --no-inject-changes

# Watch + serve together (opens browser and recompiles on save)
dev:
    mkdir -p build
    latexmk -pdf -pvc -output-directory=build main.tex & browser-sync start --server --files "build/*.pdf" --no-notify --no-inject-changes

# Compile a single chapter's files standalone (e.g. `just chapter c1-vector-spaces`)
chapter dir:
    mkdir -p build
    {{latexmk}} {{dir}}/notes.tex
    {{latexmk}} {{dir}}/queries.tex
    {{latexmk}} {{dir}}/answers.tex

# Shortcuts for each chapter
c1: (chapter "c1-vector-spaces")
c2: (chapter "c2-finite-dimensional-vector-spaces")
c3: (chapter "c3-linear-maps")
c4: (chapter "c4-polynomials")
c5: (chapter "c5-eigenvalues-and-eigenvectors")
c6: (chapter "c6-inner-product-spaces")
c7: (chapter "c7-operators-on-inner-product-spaces")
c8: (chapter "c8-operators-on-complex-vector-spaces")
c9: (chapter "c9-multilinear-algebra-and-determinants")

# Remove all build output
clean:
    rm -rf build/
