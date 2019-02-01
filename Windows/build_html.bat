

:: This is the output folder for the AC3vector for html
 set "OUTPUTFOLDER=C:\Users\longne\Documents\GitHub\active-calculus-vector\output"
 
:: This is the directory of the mathbookxml repository
 set "MBHTML=C:\Users\longne\Documents\GitHub\mathbook\xsl\mathbook-html.xsl"

 :: This is the Source file (.ptx)
set "SRC=C:\Users\longne\Documents\GitHub\active-calculus-vector\ptx\index.ptx"

:: This is the MathbookXML repository directory
set "MB=C:\Users\longne\Documents\GitHub\mathbook"

:: These paths are subdirectories of the MathbookXML distribution
set "MBXSL=%MB%\xsl"
set "MBSCRIPT=%MB%\script"
set "MBUSER=%MB%\user"
set "MBDTD=%MB%\schema\dtd"

:: This should make the html version of the project
cd %OUTPUTFOLDER%
xsltproc %MBHTML% --xinclude %SRC%

echo "Things worked!!!"
pause
