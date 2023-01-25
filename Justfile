build: build-dir
	xelatex -halt-on-error -output-directory=build resume.tex

build-dir:
	mkdir -p build/

clean:
	rm -rf build/
