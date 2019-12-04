
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

# palette
set palette defined (\
  0.00000 0.18500 0.00000 0.53007 ,\
  0.03226 0.23281 0.00000 0.56635 ,\
  0.06452 0.27774 0.00000 0.59409 ,\
  0.09677 0.32190 0.00000 0.61710 ,\
  0.12903 0.36585 0.00000 0.63611 ,\
  0.16129 0.40964 0.00000 0.65070 ,\
  0.19355 0.45309 0.00000 0.66004 ,\
  0.22581 0.49586 0.00000 0.66315 ,\
  0.25806 0.53756 0.00000 0.65928 ,\
  0.29032 0.57779 0.00000 0.64814 ,\
  0.32258 0.61620 0.00947 0.63017 ,\
  0.35484 0.65255 0.07543 0.60658 ,\
  0.38710 0.68679 0.12613 0.57905 ,\
  0.41935 0.71896 0.17055 0.54935 ,\
  0.45161 0.74922 0.21203 0.51893 ,\
  0.48387 0.77778 0.25188 0.48872 ,\
  0.51613 0.80478 0.29081 0.45914 ,\
  0.54839 0.83032 0.32936 0.43025 ,\
  0.58065 0.85439 0.36795 0.40189 ,\
  0.61290 0.87689 0.40696 0.37379 ,\
  0.64516 0.89761 0.44673 0.34568 ,\
  0.67742 0.91625 0.48755 0.31732 ,\
  0.70968 0.93245 0.52969 0.28857 ,\
  0.74194 0.94580 0.57334 0.25935 ,\
  0.77419 0.95588 0.61862 0.22966 ,\
  0.80645 0.96220 0.66562 0.19974 ,\
  0.83871 0.96427 0.71438 0.17031 ,\
  0.87097 0.96152 0.76491 0.14325 ,\
  0.90323 0.95329 0.81718 0.12263 ,\
  0.93548 0.93898 0.87109 0.11431 ,\
  0.96774 0.91827 0.92644 0.11792 ,\
  1.0 0.894058310302958 0.9822535793047805 0.0810687655704728)

# END