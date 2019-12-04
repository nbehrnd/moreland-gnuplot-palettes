
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
  0.01587 0.04102 0.01254 0.06891 ,\
  0.03175 0.07283 0.02511 0.11108 ,\
  0.04762 0.09147 0.03829 0.15083 ,\
  0.06349 0.10344 0.04985 0.19240 ,\
  0.07937 0.11698 0.05534 0.23559 ,\
  0.09524 0.13107 0.05749 0.28013 ,\
  0.11111 0.14452 0.05881 0.32583 ,\
  0.12698 0.15737 0.05923 0.37262 ,\
  0.14286 0.16964 0.05866 0.42043 ,\
  0.15873 0.18136 0.05695 0.46920 ,\
  0.17460 0.19254 0.05390 0.51888 ,\
  0.19048 0.20320 0.04923 0.56942 ,\
  0.20635 0.21334 0.04246 0.62079 ,\
  0.22222 0.22885 0.03231 0.66772 ,\
  0.23810 0.26392 0.01702 0.69670 ,\
  0.25397 0.29789 0.00000 0.72591 ,\
  0.26984 0.33115 0.00000 0.75534 ,\
  0.28571 0.36395 0.00000 0.78499 ,\
  0.30159 0.39645 0.00000 0.81486 ,\
  0.31746 0.42877 0.00000 0.84493 ,\
  0.33333 0.46099 0.00000 0.87520 ,\
  0.34921 0.50906 0.00000 0.87488 ,\
  0.36508 0.58666 0.00000 0.78848 ,\
  0.38095 0.64753 0.00000 0.70345 ,\
  0.39683 0.69731 0.00000 0.61974 ,\
  0.41270 0.73913 0.00000 0.53726 ,\
  0.42857 0.77497 0.00000 0.45577 ,\
  0.44444 0.80617 0.00000 0.37477 ,\
  0.46032 0.83375 0.02274 0.29309 ,\
  0.47619 0.85404 0.09355 0.23982 ,\
  0.49206 0.86585 0.15123 0.23939 ,\
  0.50794 0.87756 0.19496 0.23875 ,\
  0.52381 0.88916 0.23229 0.23787 ,\
  0.53968 0.90066 0.26587 0.23676 ,\
  0.55556 0.91206 0.29697 0.23539 ,\
  0.57143 0.92336 0.32632 0.23376 ,\
  0.58730 0.93456 0.35437 0.23185 ,\
  0.60317 0.94566 0.38143 0.22964 ,\
  0.61905 0.95666 0.40772 0.22712 ,\
  0.63492 0.96756 0.43338 0.22427 ,\
  0.65079 0.97836 0.45853 0.22107 ,\
  0.66667 0.97548 0.49378 0.21455 ,\
  0.68254 0.97122 0.52821 0.20714 ,\
  0.69841 0.96645 0.56138 0.19893 ,\
  0.71429 0.96115 0.59354 0.18979 ,\
  0.73016 0.95531 0.62485 0.17957 ,\
  0.74603 0.94888 0.65546 0.16805 ,\
  0.76190 0.94186 0.68548 0.15492 ,\
  0.77778 0.93420 0.71499 0.13974 ,\
  0.79365 0.92588 0.74407 0.12175 ,\
  0.80952 0.91687 0.77278 0.09961 ,\
  0.82540 0.90711 0.80117 0.07023 ,\
  0.84127 0.89658 0.82927 0.02414 ,\
  0.85714 0.91370 0.84565 0.22277 ,\
  0.87302 0.92965 0.86213 0.33192 ,\
  0.88889 0.94424 0.87876 0.42500 ,\
  0.90476 0.95736 0.89557 0.51151 ,\
  0.92063 0.96893 0.91254 0.59484 ,\
  0.93651 0.97886 0.92968 0.67655 ,\
  0.95238 0.98704 0.94699 0.75751 ,\
  0.96825 0.99337 0.96448 0.83821 ,\
  0.98413 0.99774 0.98215 0.91898 ,\
  1.0 1.0 1.0 1.0)

# END