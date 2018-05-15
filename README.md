Wrapping AFNI Commands in CWL
=============================

This repository is a didactic exercise to play around with wrapping commands in [Common Workflow Language](https://commonwl.org).  Common Workflow Language is commonly used in bioinformatics (or at least seems to be getting the most love there), but there's no real reason why it couldn't be used anywhere else where software pipelining / flow-based programming is appropriate.

I'm wrapping AFNI commands because a) I'm somewhat familiar with them and b) CWL wrappers for them could feasibly be useful if CWL gets adopted in neuroinformatics.  At a minimum, someone might be able to take this repo and run with it.

As of the time of first commit, only part of [1dplot](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/programs/1dplot_sphx.html#ahelp-1dplot) is wrapped.  I plan on prioritizing ranks 4 and 5 of the list [here](https://afni.nimh.nih.gov/pub/dist/doc/htmldoc/educational/classified_progs.html).  My "development environment" is [Rabix Composer](http://rabix.io/), although if/when I dive deeper into the CWL spec I may try to customize the Command Line Tools more deeply (if possible).

If this is like any of my other repos, progress will probably be slow.
