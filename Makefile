OUT_DIR=output

all: pdf

pdf: dir
	pandoc --pdf-engine xelatex --output $(OUT_DIR)/resume.pdf resume.md

dir:
	mkdir -p $(OUT_DIR)