build:
  typst compile resume.typ public/resume.pdf

watch:
  typst watch resume.typ public/resume.pdf

clean:
  rm public/resume.pdf
