cmake_minimum_required (VERSION 2.8)
project (ee351k-hw6)
include (UseLATEX.cmake)
add_latex_document (writeup.tex
  IMAGES 6-fig.eps
  USE_GLOSSARY
  DEFAULT_PDF
)