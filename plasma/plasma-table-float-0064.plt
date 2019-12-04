
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
  0.01587 0.20915 0.00000 0.54949 ,\
  0.03175 0.23208 0.00000 0.56586 ,\
  0.04762 0.25438 0.00000 0.58028 ,\
  0.06349 0.27633 0.00000 0.59329 ,\
  0.07937 0.29811 0.00000 0.60519 ,\
  0.09524 0.31980 0.00000 0.61610 ,\
  0.11111 0.34145 0.00000 0.62605 ,\
  0.12698 0.36306 0.00000 0.63502 ,\
  0.14286 0.38464 0.00000 0.64294 ,\
  0.15873 0.40617 0.00000 0.64972 ,\
  0.17460 0.42763 0.00000 0.65525 ,\
  0.19048 0.44897 0.00000 0.65940 ,\
  0.20635 0.47016 0.00000 0.66207 ,\
  0.22222 0.49115 0.00000 0.66314 ,\
  0.23810 0.51189 0.00000 0.66253 ,\
  0.25397 0.53234 0.00000 0.66017 ,\
  0.26984 0.55244 0.00000 0.65604 ,\
  0.28571 0.57215 0.00000 0.65016 ,\
  0.30159 0.59142 0.00000 0.64260 ,\
  0.31746 0.61023 0.00000 0.63344 ,\
  0.33333 0.62855 0.03197 0.62286 ,\
  0.34921 0.64636 0.06524 0.61104 ,\
  0.36508 0.66365 0.09263 0.59818 ,\
  0.38095 0.68043 0.11714 0.58452 ,\
  0.39683 0.69670 0.13996 0.57025 ,\
  0.41270 0.71248 0.16169 0.55558 ,\
  0.42857 0.72779 0.18263 0.54068 ,\
  0.44444 0.74265 0.20299 0.52570 ,\
  0.46032 0.75709 0.22291 0.51073 ,\
  0.47619 0.77113 0.24249 0.49586 ,\
  0.49206 0.78478 0.26183 0.48114 ,\
  0.50794 0.79806 0.28098 0.46658 ,\
  0.52381 0.81099 0.30001 0.45220 ,\
  0.53968 0.82357 0.31897 0.43798 ,\
  0.55556 0.83580 0.33792 0.42391 ,\
  0.57143 0.84767 0.35690 0.40995 ,\
  0.58730 0.85917 0.37595 0.39608 ,\
  0.60317 0.87028 0.39513 0.38225 ,\
  0.61905 0.88098 0.41446 0.36844 ,\
  0.63492 0.89124 0.43400 0.35461 ,\
  0.65079 0.90102 0.45377 0.34074 ,\
  0.66667 0.91029 0.47381 0.32681 ,\
  0.68254 0.91899 0.49415 0.31279 ,\
  0.69841 0.92709 0.51482 0.29866 ,\
  0.71429 0.93454 0.53583 0.28443 ,\
  0.73016 0.94128 0.55722 0.27007 ,\
  0.74603 0.94727 0.57900 0.25560 ,\
  0.76190 0.95245 0.60117 0.24101 ,\
  0.77778 0.95677 0.62376 0.22634 ,\
  0.79365 0.96017 0.64676 0.21161 ,\
  0.80952 0.96259 0.67019 0.19690 ,\
  0.82540 0.96397 0.69405 0.18232 ,\
  0.84127 0.96424 0.71833 0.16804 ,\
  0.85714 0.96332 0.74304 0.15437 ,\
  0.87302 0.96116 0.76818 0.14171 ,\
  0.88889 0.95766 0.79374 0.13064 ,\
  0.90476 0.95275 0.81971 0.12191 ,\
  0.92063 0.94636 0.84608 0.11630 ,\
  0.93651 0.93843 0.87283 0.11428 ,\
  0.95238 0.92892 0.89993 0.11553 ,\
  0.96825 0.91789 0.92733 0.11798 ,\
  0.98413 0.90566 0.95493 0.11531 ,\
  1.0 0.894058310302958 0.9822535793047805 0.0810687655704728)

# END