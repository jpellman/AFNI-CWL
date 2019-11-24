#!/bin/bash

# A list of all AFNI programs derived from restructured text.
AFNI_PROGS=$(curl -s https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/_sources/programs/main_toc.rst.txt | grep -o ahelp_[A-Za-z0-9@_.-]* | cut -d_ -f2-)

# Make a directory to store the man files.
mkdir afni_man

# Get all of the man files
for PROG in ${AFNI_PROGS};
do
	echo Fetching man file for: ${PROG}
	curl -s https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/_sources/programs/${PROG}_sphx.rst.txt | sed -e '1,/.. code-block::/d' > afni_man/${PROG}.txt
done
