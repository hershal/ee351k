cmake_minimum_required (VERSION 2.8)
project (ee351k-hw10)
include (UseLATEX.cmake)
add_latex_document (writeup.tex
  USE_GLOSSARY
  DEFAULT_PDF
)