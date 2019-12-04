
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
  0.00000 0.00000 0.00000 0.00000 ,\
  0.03226 0.10633 0.00568 0.11893 ,\
  0.06452 0.13824 0.01121 0.23507 ,\
  0.09677 0.15280 0.01588 0.33189 ,\
  0.12903 0.17329 0.01982 0.41531 ,\
  0.16129 0.02720 0.05961 0.57062 ,\
  0.19355 0.01966 0.18006 0.40925 ,\
  0.22581 0.01485 0.23343 0.30655 ,\
  0.25806 0.01304 0.27310 0.25189 ,\
  0.29032 0.01503 0.31027 0.20088 ,\
  0.32258 0.01654 0.34677 0.13976 ,\
  0.35484 0.01837 0.38255 0.07404 ,\
  0.38710 0.02011 0.41762 0.04580 ,\
  0.41935 0.11295 0.44904 0.02169 ,\
  0.45161 0.25551 0.47060 0.02255 ,\
  0.48387 0.39357 0.48289 0.02309 ,\
  0.51613 0.53267 0.48437 0.02569 ,\
  0.54839 0.71264 0.45261 0.03430 ,\
  0.58065 0.93016 0.34831 0.04437 ,\
  0.61290 0.96436 0.38473 0.25353 ,\
  0.64516 0.97091 0.44379 0.38927 ,\
  0.67742 0.97564 0.49058 0.58995 ,\
  0.70968 0.97777 0.53328 0.76944 ,\
  0.74194 0.97971 0.57516 0.91515 ,\
  0.77419 0.94091 0.64761 0.98315 ,\
  0.80645 0.89653 0.72365 0.98676 ,\
  0.83871 0.89132 0.77884 0.98942 ,\
  0.87097 0.90762 0.82510 0.99161 ,\
  0.90323 0.92002 0.87238 0.99392 ,\
  0.93548 0.92343 0.92218 0.99626 ,\
  0.96774 0.93733 0.96850 0.99701 ,\
  1.0 1.0 1.0 1.0)

# END