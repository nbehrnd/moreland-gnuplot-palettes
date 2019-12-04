
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
  0.03226 0.35846 0.32996 0.77713 ,\
  0.06452 0.38420 0.37560 0.79625 ,\
  0.09677 0.41207 0.42041 0.81392 ,\
  0.12903 0.44212 0.46465 0.83021 ,\
  0.16129 0.47439 0.50846 0.84520 ,\
  0.19355 0.50891 0.55193 0.85899 ,\
  0.22581 0.54569 0.59509 0.87167 ,\
  0.25806 0.58474 0.63798 0.88334 ,\
  0.29032 0.62607 0.68060 0.89409 ,\
  0.32258 0.66967 0.72295 0.90405 ,\
  0.35484 0.71555 0.76500 0.91332 ,\
  0.38710 0.76370 0.80674 0.92204 ,\
  0.41935 0.81412 0.84815 0.93031 ,\
  0.45161 0.86680 0.88919 0.93827 ,\
  0.48387 0.92173 0.92983 0.94606 ,\
  0.51613 0.94311 0.92584 0.91437 ,\
  0.54839 0.92941 0.87732 0.84489 ,\
  0.58065 0.91579 0.82850 0.77770 ,\
  0.61290 0.90206 0.77936 0.71290 ,\
  0.64516 0.88809 0.72987 0.65060 ,\
  0.67742 0.87377 0.67999 0.59087 ,\
  0.70968 0.85899 0.62964 0.53381 ,\
  0.74194 0.84367 0.57868 0.47950 ,\
  0.77419 0.82773 0.52695 0.42801 ,\
  0.80645 0.81111 0.47416 0.37943 ,\
  0.83871 0.79376 0.41987 0.33385 ,\
  0.87097 0.77563 0.36334 0.29135 ,\
  0.90323 0.75669 0.30321 0.25205 ,\
  0.93548 0.73689 0.23662 0.21605 ,\
  0.96774 0.71621 0.15552 0.18351 ,\
  1.0 0.694625624821 0.00296461045768 0.154581828278)

# END