

:: This is the output folder for the AC3vector for html
 set "OUTPUTFOLDER=C:\active-calculus-vector\Windows\TestingExample\output"
 
:: This is the directory of the mathbookxml repository
 set "MBHTML=C:\mathbook\xsl\mathbook-latex.xsl"

 :: This is the Source file (.ptx)
set "SRC=C:\active-calculus-vector\Windows\TestingExample\quickstart.xml"

:: This should make the html version of the project
cd %OUTPUTFOLDER%
xsltproc %MBHTML% %SRC%

echo "Things worked!!!"
pause
