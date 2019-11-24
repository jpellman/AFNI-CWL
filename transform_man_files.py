#!/usr/bin/env python
import re
import sys

path = sys.argv[1]
with open(path,'r') as f:
    for line in f:
        # Matches forms 1 and 3 of documentation style.
        m = re.match('^\s+-\w+.*[:=]',line)
        # Print match and then print all lines until next empty line.
        if m:
            print(line, end="")
            # This sometimes iterates over other matches of the above regex.
            # In the absence of more complex logic we tolerate this.
            while line.strip():
                line = f.readline()
                print(line, end="")
        # Handles form 2
        else:
            m = re.match('^\s+-\w+.*',line)
            if m:
                print(line, end="")
                # This sometimes iterates over other matches of the above regex.
                # In the absence of more complex logic we tolerate this.
                while line.strip():
                    line = f.readline()
                    print(line, end="")

