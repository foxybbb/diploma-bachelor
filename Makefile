all: build run


build:
	latexmk -xelatex -synctex=1 -jobname=diploma-bachelor main.tex



run:
    

clean:
	rm *.aux \
	*.fdb_latexmk \
	*.fls \
	*.lof \
	*.lot \
	*.log \
	*.out \
	*.synctex.gz \
	*.xdv \
	*.toc

docker: 
	docker build -t latex-docker .
	docker run --rm -ti -v ${PWD}:/diploma-bachelor:Z docker-latex bash -c "make build && make clean"