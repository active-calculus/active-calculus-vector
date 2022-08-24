
:: This is the output folder for the various options
set "OUTPUTFOLDER=C:\Users\longne\Documents\GitHub\active-calculus-vector\output"
 
:: This is the directory of the pretext-xml repository
set "MBHTML=C:\Users\longne\Documents\GitHub\mathbook\xsl\pretext-html.xsl"

 :: This is the Source file (.ptx)
set "SRC=C:\Users\longne\Documents\GitHub\active-calculus-vector\ptx\index.ptx"

:: This is the source directory
set "SRCDIR=C:\Users\longne\Documents\GitHub\active-calculus-vector"

:: This is the MathbookXML repository directory
set "MB=C:\Users\longne\Documents\GitHub\mathbook"

:: These paths are subdirectories of the MathbookXML distribution
set "MBXSL=%MB%\xsl"
set "MBSCRIPT=%MB%\script"
set "MBUSER=%MB%\user"
set "DTD=%MB%\schema\dtd"
set "PRETEXTSCRIPTDIR=%MB%\pretext"
set "WWOUT=%OUTPUTFOLDER%\webwork-representations"
set "HTMLOUT=%OUTPUTFOLDER%\HTML"

::set "OTHERIMAGES=C:\Users\longne\Documents\GitHub\CalcVR-PreTeXt\ptx\images"

:: This is the WebWork Server to use to process the WebWork problems.
set "SERVER= https://webwork-ptx.aimath.org"


:: Need to make the WebWork output directory then remove the previous WebWork representation file, and finally build the new WebWork representations.
::mkdir %WWOUT%
::DEL %WWOUT%\webwork-representations.ptx
::python %PRETEXTSCRIPTDIR%\pretext -v -c webwork -s %SERVER% -d %WWOUT% %SRC%


::Need to make HTMLOUT directory, remove other .html files, remove old knowls, copy images over from both the ptx and the WWOUT representations, 
::copy the webwork-representations.ptx to the directory with the source file, go to the HTMLOUT directory, then process the ptx files to build the html.
mkdir %HTMLOUT%
DEL %HTMLOUT%\*.html
DEL %HTMLOUT%\knowl\*.html
mkdir %HTMLOUT%\images
COPY %OTHERIMAGES%\ %HTMLOUT%\images\
::COPY %WWOUT%\*.png %HTMLOUT%\images\
::COPY %WWOUT%\*.svg %HTMLOUT%\images\
COPY %WWOUT%\webwork-representations.ptx %SRCDIR%\
cd %HTMLOUT%

xsltproc -stringparam publisher publication.xml -stringparam webwork.worksheet.static no -stringparam webwork.divisional.static no -stringparam webwork.reading.static no -stringparam debug.datedfiles no %MBHTML% --xinclude %SRC%
:: The interactive webwork options are worksheet, divisional (in an exercises environment), reading, and inline (which is set to no by default).
:: I believe you need to have python 3 installed with the requests and lxml packages. I will try this on another computer to see if there are other dependencies...

python -m http.server 8003 --bind 127.0.0.1

echo "Things worked!!!"
pause