#!/bin/bash
cd "$(dirname "$0")"
cp template.tex ~/.local/share/pandoc/templates/bollo.latex
pandoc whitepaper.md --template=bollo --pdf-engine=xelatex -o whitepaper.pdf
echo "Built whitepaper.pdf ($(du -h whitepaper.pdf | cut -f1))"
