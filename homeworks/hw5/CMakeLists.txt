cmake_minimum_required (VERSION 2.8)
project (ee351k-hw5)
include (UseLATEX.cmake)
add_latex_document (writeup.tex
  IMAGES 6-areas.eps
  USE_GLOSSARY
  DEFAULT_PDF
)