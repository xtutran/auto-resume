build:
	docker run --rm  --name latex -v `PWD`:/doc/ -it thomasweise/texlive pdflatex -interaction nonstopmode tran-xuantu.tex