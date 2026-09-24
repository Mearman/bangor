-- l3build configuration for the bangor package. Packaging runs wherever TeX Live runs, with no extra runtime: lua ships with the distribution. Run l3build ctan to build the CTAN upload archive and the TDS tree that installs the class and the crest under texmf/tex/latex/bangor, where TEXINPUTS finds the crest for the extensionless includegraphics reference.
module = "bangor"

sourcefiles = {"bangor.cls", "bangor-crest-colour.pdf"}
installfiles = {"bangor.cls", "bangor-crest-colour.pdf"}
textfiles = {"README.md", "LICENSE"}

-- The documentation sources live in doc/ and compile against the package sources.
docfiledir = "doc"
docfiles = {"bangor.tex"}

-- Development-only trees never enter the distribution archive.
excludefiles = {"*/tests/*", "*/assets/*", "*/scripts/*", "*/.github/*"}

-- l3build check: the regression tests in testfiles/ run against the
-- packaged sources. Dates and versions in log output are normalised so
-- runs diff cleanly across releases.
checkengines = {"pdftex"}
checkruns = 1
