#!/bin/python3

# name:    RGB_check.py
# author:  nbehrnd@yahoo.com
# license: MIT
# date:    2019-11-27 (YYYY-MM-DD)
# edit:    2019-12-05 (YYYY-MM-DD)

""" Probe Kenneth Moreland's palettes for keeping RGB in range [0...1]

After conversion into .plt, some of Kenneth Moreland's diverging color
palettes (floating number RGB) with the transient blue -> white -> red are
not permitted by gnuplot.  Tuples with coordinates exceeding the range of
[0,1] were identified as reason.  If present in the .plt, they typically
are present in the orginal .csv as well, though.

To identify the other palettes with RGB > 1, run this script right after
working with csv2plt.py in the same folder as the .plt by

python3 RGB_check.py

Without provision of parameters, it states the file names of those with
any RGB tuple (component) larger than 1. """

import fnmatch
import os
import sys


def file_identification():
    """ Identify the files to work with. """
    global register
    register = []
    for file in os.listdir("."):
        if fnmatch.fnmatch(file, "*float*.plt"):
            register.append(file)
    register.sort()


def file_probing():
    """ Check the files for the presence of RGB greater than 1. """
    for entry in register:
        file_content = []

        with open(entry, mode="r") as source:
            for line in source:
                per_line = str(line.strip()).split(",")
                for element in per_line:
                    try:
                        number = float(str(element))
                        file_content.append(number)
                    except:  # Probably the header.
                        pass

        for number in file_content:
            if number > 1:
                print("Check {}".format(entry))
                break


# action calls:
file_identification()
file_probing()
sys.exit(0)
