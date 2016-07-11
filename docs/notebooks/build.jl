#!/usr/bin/env julia

nb_files = ["city"]

for nb in nb_files
    run(`jupyter nbconvert --to notebook --execute --ExecutePreprocessor.timeout=60 --inplace $nb.ipynb`)
    run(`jupyter nbconvert --to markdown "$nb.ipynb"`)
end
