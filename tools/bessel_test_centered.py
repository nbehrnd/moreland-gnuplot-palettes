#!bin/python3

# name:    bessel_test_centered.py
# author:  nbehrnd@yahoo.com
# license: MIT
# date:    2019-11-25 (YYYY-MM-DD)
# edit:    2019-12-04 (YYYY-MM-DD)
"""Test Moreland's palettes (color and bw) with Bessel data, set cbrange

Kenneth Moreland [1] suggests palettes for scientific visualization
which differ from the ones (still) so often seen by focusing on a
continuous increase of the luminosity between the extremes to be
displayed.  This influences both their appearance if plot in the RGB
space, and their perception if constrained to gray scale.

After transforming the information provided by Kenneth Moreland into a
format accessible to gnuplot by csv2plt.py, this script eventually
calls the plotter to probe these palettes for a 'print in color' on
synthetic data.  Gnuplot computes these by itself for the Bessel
function

f(x,y) = x^2 * y^2

and deposits the result in a pattern of *_c.png.  To account for all
of the information in the palettes, both gnuplot parameters 'sample'
and 'isosample' were increased to 2024 and 1024 throughout the
palettes tested.  The number of explicitly defined color levels in the
.plt derived from Moreland's work ranges from 8 up to 1024.

This script is 'centered' because the color scheme's spread is
explicitly set with cbrange to span symmetrically [-1,1].  This is
despite the Bessel function deployed actually fits well into the range
of -0.4 < z < 1.

The following operations will be performed only if ImageMagick may be
launched as a subprocess.  Enter 'convert --version' in the CLI to see
if the program is installed.  ImageMagick
+ converts the color plots (*_c.png) into a grayscale representations
  (pattern *_bw.png) with 'convert'.  This mimics an output on a black-
  and-white printer.

+ Assuming there was an earlier run with script decomposition.py to trace
  the palette's R, G, and B channels (RGB space) and luminosity Y channel
  (NTSC model), ImageMagick concatenates test data's *_c.png, the
  decomposition, and test data's *_bw.png into a synopsis *_test.png.

+ To save memory of file size used, ImageMagick scales the 'initial form'
  of the synopsis to half of its original dimension (2444 px to now
  1222 px width) which is assumed 'enough' for a display on screen.  For
  a print with 300 dpi resolution (which would equate to about 4.1 in or
  10.0 cm width) you may consider to comment-out the section between
  lines #152 to #159, though.

The script was developed and deployed successfully in Linux Xubuntu
18.04.3 with CPython 3.6.8 and ImageMagick 6.9.7-4.

[1] http://www.kennethmoreland.com/color-advice/

"""

import fnmatch
import os
import subprocess as sub
import sys

try:
    import Gnuplot as gp
except IOError:
    print("Third party CPython module 'Gnuplot.py' is not accessible.")
    print("Check it's installation, e.g. with pip.")
    sys.exit(0)


def identification():
    """ Identify the .plt to work on. """
    global register
    register = []
    for file in os.listdir("."):
        if fnmatch.fnmatch(file, "*.plt"):
            register.append(file)
    register.sort()


def color_plots():
    """ Compute and (color) plot the Bessel function with gnuplot. """

    for entry in register:
        print("Color plot generation for {}.".format(entry))
        g = gp.Gnuplot(persist=0)

        g('set terminal pngcairo size 1024,1024 crop font "Arial,16" \
               enha lw 2')
        g('input = "{}"'.format(entry))
        g('len_root = strlen(input) - 4')
        g('root = substr(input, 1, len_root)')
        g('output_file = root . "_c.png"')
        g('set output(output_file)')

        g('set size square')
        g('unset key')
        g('set label root at graph 0.50,0.95 center font "Courier,16" \
               front noenhanced')

        g('load "{}"'.format(entry))
        g('set pm3d map')
        # Keep in the file plot only 'the visible' (painter's problem):
        g('set pm3d depthorder; set hidden; set hidden3d')
        g('set iso 1024')  # As a palette may contain up to 1024 colors.
        g('set sample 500')  # Incremental compute in 0.2 units of x and y.
        g('set xrange [-5:5]; set yrange [-5:5]')
        g('set cbrange[-1:1]')

        # plot the Bessel function f(x,y) = x^2 + y^2
        g('splot besj0(x**2 + y**2) with pm3d')


def gray_plots():
    """ Convert gnuplot's color plots to gray scale with ImageMagick. """
    print("\nAttempting RGB -> gray scale conversion of gnuplot plot's.")
    print("The original color plots will be conserved.\n")

    for entry in register:
        color_plot = str(entry)[:-4] + str("_c.png")
        gray_plot = str(entry)[:-4] + str("_bw.png")

        convert = str("convert -colorspace RGB {} -colorspace gray {}".format(
            color_plot, gray_plot))
        try:
            sub.call(convert, shell=True)
        except IOError:
            print("ImageMagick's convert is inaccessible.  Script exit.")
            sys.exit(0)

    print("The color space conversion was completed.")


def triple_synopsis():
    """ Montage related *_c.png, decomposition vignette, *_bw.png. """
    print("\nAttempting montage of plots with ImageMagick.")

    for entry in register:
        color_plot = str(entry)[:-4] + str("_c.png")
        gray_plot = str(entry)[:-4] + str("_bw.png")
        vignette = str(entry)[:-4] + str("_vig.png")
        retained = str(entry)[:-4] + str("_test.png")

        synopsis = str(
            "montage -mode concatenate -tile 3x1 {} {} {} {}".format(
                color_plot, vignette, gray_plot, retained))
        try:
            sub.call(synopsis, shell=True)

            # Space cleaning: the gray_plot .png probably isn't needed
            os.remove(gray_plot)

            # Scale the synopsis by half with mogrify.  For a print, you
            # may consider commenting out this block completely.
            scaling = str("mogrify -scale 1222 {}".format(retained))
            try:
                sub.call(scaling, shell=True)
            except IOError:
                print("ImageMagick's mogrify is not accessible.  Exit.")
                sys.exit(0)

        except IOError:
            print("ImageMagick's montage is inaccessible.  Script exit.")
            sys.exit(0)

    print("Creation of synopses is complete.")


# action calls
identification()
color_plots()
gray_plots()

triple_synopsis()
sys.exit(0)
