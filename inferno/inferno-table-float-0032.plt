
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
  0.00000 0.00281 0.00024 0.01398 ,\
  0.03226 0.02186 0.01045 0.07424 ,\
  0.06452 0.06194 0.02557 0.14585 ,\
  0.09677 0.10958 0.03631 0.22268 ,\
  0.12903 0.16417 0.03212 0.30017 ,\
  0.16129 0.22156 0.01592 0.36379 ,\
  0.19355 0.27509 0.00800 0.40295 ,\
  0.22581 0.32436 0.01650 0.42334 ,\
  0.25806 0.37165 0.03775 0.43272 ,\
  0.29032 0.41843 0.06327 0.43519 ,\
  0.32258 0.46537 0.08646 0.43239 ,\
  0.35484 0.51267 0.10801 0.42489 ,\
  0.38710 0.56028 0.12880 0.41276 ,\
  0.41935 0.60795 0.14976 0.39598 ,\
  0.45161 0.65526 0.17190 0.37459 ,\
  0.48387 0.70164 0.19624 0.34886 ,\
  0.51613 0.74638 0.22382 0.31924 ,\
  0.54839 0.78867 0.25552 0.28634 ,\
  0.58065 0.82764 0.29197 0.25088 ,\
  0.61290 0.86248 0.33340 0.21344 ,\
  0.64516 0.89250 0.37961 0.17421 ,\
  0.67742 0.91725 0.43007 0.13280 ,\
  0.70968 0.93643 0.48414 0.08802 ,\
  0.74194 0.94988 0.54116 0.03792 ,\
  0.77419 0.95748 0.60055 0.00511 ,\
  0.80645 0.95912 0.66183 0.02186 ,\
  0.83871 0.95467 0.72454 0.09158 ,\
  0.87097 0.94424 0.78819 0.17241 ,\
  0.90323 0.92888 0.85181 0.26606 ,\
  0.93548 0.91377 0.91287 0.37993 ,\
  0.96774 0.91789 0.96460 0.51438 ,\
  1.0 0.9593995073432898 1.0 0.6406264784793354)

# END