Use pandoc to generate pdf from markdown
```
pandoc --filter pandoc-citeproc --bibliography=ref.bib --csl=ieee.csl --metadata link-citations -N review.md -o review.pdf
```

* Enable citation, read bib file, use ieee.csl style, enable hyperlink for citations: `--filter pandoc-citeproc  --bibliography=ref.bib  --csl=ieee.csl --metadata link-citations`
* Numbered heading: `-N`
* Source file: `review.md`
* Output file: `-o review.pdf`


Dependencies:
* pdflatex: `sudo apt-get install texlive-ful`
* [ieee.cls file](./assets/ieee.csl)

Note: pandoc use 4 spaces or tab to indent list/sublist
