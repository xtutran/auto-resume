build:
	docker build -t my-latex .
local:
	docker run --rm -i -v .:/data my-latex pdflatex tran-xuantu.tex