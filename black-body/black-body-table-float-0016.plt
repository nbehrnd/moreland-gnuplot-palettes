
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
  0.06667 0.13604 0.06026 0.03585 ,\
  0.13333 0.23660 0.08544 0.06633 ,\
  0.20000 0.34531 0.10425 0.08595 ,\
  0.26667 0.45965 0.11826 0.10371 ,\
  0.33333 0.57887 0.12712 0.12168 ,\
  0.40000 0.69433 0.14737 0.13555 ,\
  0.46667 0.75797 0.25481 0.11541 ,\
  0.53333 0.82123 0.34664 0.07892 ,\
  0.60000 0.87357 0.44136 0.01846 ,\
  0.66667 0.88733 0.55460 0.01388 ,\
  0.73333 0.89571 0.66163 0.01339 ,\
  0.80000 0.89821 0.76567 0.01802 ,\
  0.86667 0.92343 0.85552 0.29120 ,\
  0.93333 0.97701 0.92623 0.66029 ,\
  1.0 1.0 1.0 1.0)

# END