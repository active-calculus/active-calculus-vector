# active-calculus-vector

Vector calculus materials to accompany Active Calculus
Multivariable. At present, we only support building HTML for this,
since preparing the necessary static versions of the interactive
elements for PDF generation requires considerable extra effort and
care. You can view a live HTML version of this at
http://activecalculus.org/vector/.

## Building instructions

1. Install the pretext CLI. See the PreTeXt documentation for how to
install it
2. Make changes to paths in the `executables` portion of `project.ptx`
   if necessary. (At present, no changes are required. Changes may be
   ncessary when support for building formats other than HTML is added.)
3. Run `pretext build -w vector`. This will ensure that WeBWorK
   exercises are properly extracted. This command only needs to be run
   with the `-w` flag if changes are made to WeBWorK
   exercise. Otherwise, just run `pretext build vector`.
4. Run `pretext view vector`, which will give you a URL you can use to
   view the HTML output. Note that for speed purposes, only Chapter 12
   will be built and can be read, although the full table of contents
   will appear and cross references will be correct.
5. Run 'pretext deploy' to upload your current build of the web/html version to github.io. You should get links in your command window to the viewable state on github, but it is of the form  https://github.com/<username>/<repository>/settings/pages. You can view the uploaded page at https://<username>.github.io/<repository>/

On first run of a this repository on a new machine, you should run 
`pretext build -w html` to build the overall html structure (since the 
html output will not be built yet). After this lengthy build, updates to 
the vector calc chapter will be done by `pretext build vector` command.

If Python is not in the path at the command line, you may need to append 
python -m to each command.