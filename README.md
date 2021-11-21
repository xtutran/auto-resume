# My public Resume

## 1. Local preview
```sh
docker build -t my-latex .
docker run --rm -i -v "$PWD":/data my-latex pdflatex tran-xuantu.tex
```