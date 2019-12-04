#!/bin/python3

# name:    palette_decomposition.py
# author:  nbehrnd@yahoo.com
# license: MIT, 2019
# date:    2019-11-29 (YYYY-MM-DD)
""" Provide for each gnuplot palette definition a synoptic vignette.

    For any palette used, Gnuplot may visually report their components
    (red, green, blue channel) across the accessible RGB color space.
    Additionally, this diagnostic displays the NTSC luminance, which is
    indicative for an output constrained to gray scale.

    To work with the script, put this script in the same folder as the
    .plt palette definitions to probe.  Launch it from the CLI without
    parameters with

    python palette_decomposition.py

    to create little vignettes (.png, 640x480 px) about each palette. """

import fnmatch
import os
import shutil
import subprocess as sub
import sys
try:
    import Gnuplot as gp  # third party CPython module, available with pip.
except IOError:
    print("CPython module 'Gnuplot.py' isn't accessible.  Exit.")
    sys.exit(0)


def identify_plt():
    """ Identify the .plt to probe. """
    global register
    register = []

    for file in os.listdir("."):
        if fnmatch.fnmatch(file, "*.plt"):
            register.append(file)
    register.sort()


def probe_plt():
    """ Probe the .plt files. """
    for entry in register:
        print("Work on {}.".format(entry))

        g = gp.Gnuplot(persist=0)

        g('input = "{}"'.format(entry))
        g('len_root = strlen(input) - 4')
        g('root = substr(input, 1, len_root)')
        g('output_file = root . "_vig.png"')
        g('set output(output_file)')

        g('set terminal pngcairo')
        g('load "{}"'.format(entry))
        g('test palette')


def inner_stamp():
    """ Provide an inner identifier on the characteristic plot.

    Calling gnuplot to test the palette generates a diagram without a
    label about the palette accessed.  To ease comparison of the plots
    while passing from one, to the next, ImageMagick shall provide an
    'inner stamp' on these plots. """

    for entry in register:
        plot_to_stamp = str(entry)[:-4] + str("_vig.png")
        plot_stamped = str(plot_to_stamp) + str("stamped")
        plot_retained = str(plot_to_stamp)
        print("Inner stamping on {}.".format(plot_to_stamp))

        # stamping as-such
        # The credit for the instruction below belongs to the authors of
        # https://www.imagemagick.org/Usage/annotating/
        stamping = str("convert {}".format(plot_to_stamp)) +\
                   str(" -font Arial -pointsize 30 ") +\
                   str("-draw \"gravity south fill black text 0, 12 ' ") +\
                   str(plot_to_stamp)[:-4] + str(" \'\" ") +\
                   str(plot_stamped)
        try:
            sub.call(stamping, shell=True)
            shutil.move(plot_stamped, plot_retained)
        except IOError:
            print("Inner stamping failed on {}.".format(plot_to_stamp))


# action calls:
identify_plt()
probe_plt()
inner_stamp()
sys.exit(0)
