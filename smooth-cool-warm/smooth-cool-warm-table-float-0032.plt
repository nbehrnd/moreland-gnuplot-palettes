
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
  0.00000 0.33479 0.28308 0.75650 ,\
  0.03226 0.36944 0.34087 0.80575 ,\
  0.06452 0.40426 0.39736 0.85039 ,\
  0.09677 0.43937 0.45237 0.88993 ,\
  0.12903 0.47485 0.50558 0.92397 ,\
  0.16129 0.51069 0.55662 0.95216 ,\
  0.19355 0.54686 0.60509 0.97421 ,\
  0.22581 0.58324 0.65058 0.98991 ,\
  0.25806 0.61966 0.69268 0.99911 ,\
  0.29032 0.65590 0.73100 1.00000 ,\
  0.32258 0.69168 0.76518 0.99784 ,\
  0.35484 0.72671 0.79488 0.98743 ,\
  0.38710 0.76064 0.81977 0.97066 ,\
  0.41935 0.79312 0.83958 0.94774 ,\
  0.45161 0.82376 0.85407 0.91892 ,\
  0.48387 0.85217 0.86304 0.88452 ,\
  0.51613 0.88046 0.85775 0.84257 ,\
  0.54839 0.90642 0.83830 0.79544 ,\
  0.58065 0.92683 0.81346 0.74664 ,\
  0.61290 0.94163 0.78345 0.69666 ,\
  0.64516 0.95076 0.74849 0.64599 ,\
  0.67742 0.95419 0.70885 0.59509 ,\
  0.70968 0.95193 0.66481 0.54439 ,\
  0.74194 0.94403 0.61664 0.49431 ,\
  0.77419 0.93055 0.56460 0.44523 ,\
  0.80645 0.91161 0.50887 0.39749 ,\
  0.83871 0.88736 0.44953 0.35140 ,\
  0.87097 0.85800 0.38641 0.30725 ,\
  0.90323 0.82376 0.31878 0.26528 ,\
  0.93548 0.78490 0.24459 0.22572 ,\
  0.96774 0.74175 0.15690 0.18876 ,\
  1.0 0.6946256248213637 0.0029646104576792577 0.15458182827759628)

# END