#!/bin/python3

# name:    vignette_testing.py
# author:  nbehrnd@yahoo.com
# license: 2019, MIT
# date:    2019-12-02 (YYYY-MM-DD)
# edit:    2019-12-03 (YYYY-MM-DD)
#
""" Probe for gnuplot palettes' differences

    Script 'palette_decomposition.py' provides rapid access to visualize
    the channels of R, G, B of RGB color space subsequently deposit e.g.
    as a .png file.
    compare by ImageMagick allows the superposition of two .png files to
    identify differences between the two; this is then highlighted by red
    pixels.  Because 'palette_decomposition.py' names the diagnostic files
    coherently, their inspection with ImageMagick may be be automated.

    Place the script in the same folder already containing the vignette /
    decomposition plots to scrutinize as .png.  Launch without provision
    of parameters by

    python3 vignette_comparsion.py

    The script will point ImageMagick which files to check against each
    other.  This for example allows to discern quickly palettes with a
    similar name, but from different repositories (e.g., magma).  """

import fnmatch
import os
import shutil
import subprocess as sub
import sys


def identify():
    """ Learn about the vignette .png to process at all. """
    global register
    register = []

    for file in os.listdir("."):
        if fnmatch.fnmatch(file, "*_vig.png"):
            register.append(file)
    register.sort()


def probe():
    """ Call compare by ImageMagick to work on the data. """
    print("\nProbing for differences in the palette files' plots.")

    while len(register) > 1:
        for entry in register[1:]:
            reference = register[0]
            probe = entry
            difference = str("diff_{}_{}".format(str(reference[:-4]), probe))

            test = str("compare {} {} {}".format(reference, entry, difference))
            try:
                sub.call(test, shell=True)
            except IOError:
                print("Possibly no callable instance of ImageMagick.")
                sys.exit(0)
        del register[0]
    print("Probing for differences in the palette files' plots complete.")


def stamp():
    """ Add an 'inner stamp' to ease the visual discern of the plots. """
    print("\nProvision of 'inner stamps' in the difference plots.")

    diff_register = []
    for file in os.listdir("."):
        if fnmatch.fnmatch(file, "diff*.png"):
            diff_register.append(file)
    diff_register.sort()

    for entry in diff_register:
        intermediate = str(entry)[:-4] + str("_intermediate.png")
        stamping = str(
            "convert {} label:'{}' -gravity Center -append {}".format(
                entry, entry, intermediate))
        try:
            sub.call(stamping, shell=True)
            # Cleaning; retain only the stamped file filed by old name.
            os.remove(entry)
            shutil.move(intermediate, entry)
        except IOError:
            print("problem with {}".format(entry))
            sys.exit(0)


# action calls:
identify()
probe()
stamp()
sys.exit(0)
