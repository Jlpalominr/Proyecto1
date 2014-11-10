#! /bin/bash

# Ejecutar en la carpeta donde estan los pdf's
ls *.pdf | xargs -I{} pdftotext -layout "{}" "{}.txt"
