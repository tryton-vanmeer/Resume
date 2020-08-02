OUT_DIR=output

all: pdf

pdf: dir
	pandoc --include-in-header resume.tex --pdf-engine xelatex --output $(OUT_DIR)/resume.pdf resume.md

tex:
	pandoc --from markdown --to latex resume.md

dir:
	mkdir -p $(OUT_DIR)