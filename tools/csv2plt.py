#!/bin/python3

# name:    csv2plt.py
# author:  nbehrnd@yahoo.com
# license: MIT 2019
# date:    2019-11-25 (YYYY-MM-DD)
# edit:    2019-12-02 (YYYY-MM-DD)
""" Convert Moreland's float defined palettes (.csv) into gnuplot .plt.

    Put this script into the same folder as the .csv to read.  Called by

    python3 csv2plt.py

    Moreland's RGB definitions as floating numbers will be formatted and
    rounded to five decimals.  This is then deposit in .plt.  On occasion
    the RGB might exceed the range of [0,1]; these files are identified
    with RGB_check.py.  Rounding to just two decimals will allow more .plt
    to pass the check by RGB_check.py, yet on expense of quality (see the
    'RGB decomposition', in gnuplot's /test palette/ instruction). """

import fnmatch
import os
import sys

header = str("""
# Kenneth Moreland suggested diverging palettes (e.g., transient blue ->
# white -> red) in 'Diverging Color Maps for Scientific Visualization'
# (2009).  Illustrated details are provided on.[1]  Different to the ones
# (still) 'typically used' the color definitions in these are less bright.
#
# Bastian Rieck provided a map of 256 levels including the line styles
# below which is used as a reference here.[2]  He correctly speculated
# gnuplot's dying maps depends on the number of the levels explicitly
# defined in the .plt.  This change was recognized with synthetic data,
# the Bessel function of
#
# f(x,y) = x^2 + y^2
#
# plot as 2D map with different palette definitions.  The .png eventually
# were compared with Imagemagick's compare routine.
#
# Note that for blue -> white -> red diverging maps, Moreland suggests two
# types of palettes:
#
# + type 'Smooth Cool Warm'.  This is 'a map with a smooth transition in
#   the middle to prevent artifacts at the midpoint'. (loc. cit.)
# + type 'Bent Cool Warm'.  Here, 'the luminance is interpolated linearly
#   with a sharp bend in the middle. This makes for less washed out colors
#   in the middle, but also creates an artifact at the midpoint.'
#
# On occasion the RGB might exceed the range of [0,1]; these files are
# identified with RGB_check.py.  Rounding to just two decimals will allow
# more .plt to pass the check by RGB_check.py, yet on expense of quality
# (see the 'RGB decomposition', by gnuplot's /test palette/ instruction.)
#
# To work with the .plt in gnuplot, either copy the definitions into the
# gnuplot script, or access their information with a
#
# load example.plt
#
# instruction prior to the [s]plot command.
#
# [1] http://www.kennethmoreland.com/color-advice/
# [2] http://bastian.rieck.ru/blog/posts/2012/gnuplot_better_colour_palettes/


# line styles
set style line 1 lt 1 lc rgb '#3b4cc0' #
set style line 2 lt 1 lc rgb '#688aef' #
set style line 3 lt 1 lc rgb '#99baff' #
set style line 4 lt 1 lc rgb '#c9d8ef' #
set style line 5 lt 1 lc rgb '#edd1c2' #
set style line 6 lt 1 lc rgb '#f7a789' #
set style line 7 lt 1 lc rgb '#e36a53' #
set style line 8 lt 1 lc rgb '#b40426' #

# palette\n""")


def learn():
    """ Learn only about the float-defining .csv. """
    global file_register
    file_register = []
    for file in os.listdir("."):
        if fnmatch.fnmatch(file, "*byte*.csv"):
            os.remove(file)  # They shall not be accessed, for now.
        if fnmatch.fnmatch(file, "*float*.csv"):
            file_register.append(file)
    file_register.sort()


def transcribe():
    """ Transscription of the .csv into .plt. """
    for entry in file_register:
        per_file = []
        output = str(entry)[:-4] + str(".plt")
        print("Work on on {}.".format(output))

        with open(entry, mode="r") as source:
            for line in source:
                per_file.append(line.strip())

        with open(output, mode="w") as log:
            log.write(header)
            log.write("set palette defined (\\\n")

            for entry in per_file[1:-1]:  # Line #1 contains the headers.
                keeper = "  "
                split = str(entry).split(",")
                for tupel_element in split:

                    # Rounding to five decimals yields a few RGB > 1.  A
                    # subsequent test with RGB_test.py is suggested.  But
                    # rounding to only two decimals is expensive on color
                    # quality later on.
                    keeper += str("{0:.5f} ".format(float(tupel_element)))

                keeper += str(",\\\n")
                log.write(keeper)
            log.write("  ")

            for entry in per_file[-1]:
                keeper = ""
                counter = 0

                for char in entry:
                    if char != str(","):
                        if counter < 5:
                            counter += 1
                            keeper += str(char)
                    if char == str(","):
                        keeper += str(" ")
                        break
                log.write(keeper)

            # Mark explicitly the end of the .plt file written.
            log.write(")\n\n# END")


# action calls
learn()
transcribe()
sys.exit(0)
