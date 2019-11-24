#!/usr/bin/env python
import re
import sys

path = sys.argv[1]
form1or3 = []
form2 = []
with open(path,'r') as f:
    for line in f:
        # Matches forms 1 and 3 of documentation style.
        m = re.match('^\s+-[A-Za-z]\w+.*[:=]',line)
        # Print match and then print all lines until next empty line.
        if m:
            form1or3.append(line)
            # This sometimes iterates over other matches of the above regex.
            # In the absence of more complex logic we tolerate this.
            while line.strip():
                line = f.readline()
                form1or3.append(line)
        # Handles form 2
        else:
            m = re.match('^\s+-[A-Za-z]\w+.*',line)
            if m:
                form2.append(line)
                # This sometimes iterates over other matches of the above regex.
                # In the absence of more complex logic we tolerate this.
                while line.strip():
                    line = f.readline()
                    form2.append(line)

if form1or3:
    for line in form1or3:
        print(line,end="")
elif form2:
    for line in form2:
        print(line,end="")


