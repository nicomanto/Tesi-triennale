@echo off

if [%BUILD_DIR%]==[] set BUILD_DIR=..\..\

@echo --------------------------------------------------------------
@echo -                         Pulizia                            -
@echo --------------------------------------------------------------
del %BUILD_DIR%*.sc %BUILD_DIR%*.acn %BUILD_DIR%*.acr %BUILD_DIR%*.alg %BUILD_DIR%*.aux %BUILD_DIR%*.bbl %BUILD_DIR%*.bcf %BUILD_DIR%*.blg %BUILD_DIR%*.glg %BUILD_DIR%*.glo %BUILD_DIR%*.gls
del %BUILD_DIR%*.ist %BUILD_DIR%*.lof %BUILD_DIR%*.log %BUILD_DIR%*.lot %BUILD_DIR%*.run.xml %BUILD_DIR%*.synctex %BUILD_DIR%*.toc %BUILD_DIR%*-frn.tex 