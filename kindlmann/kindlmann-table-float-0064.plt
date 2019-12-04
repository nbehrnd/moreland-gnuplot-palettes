
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
  0.01587 0.06712 0.00322 0.06368 ,\
  0.03175 0.10783 0.00527 0.11058 ,\
  0.04762 0.13282 0.00762 0.15869 ,\
  0.06349 0.15066 0.00978 0.20437 ,\
  0.07937 0.16451 0.01178 0.24615 ,\
  0.09524 0.17636 0.01367 0.28710 ,\
  0.11111 0.18696 0.01575 0.33014 ,\
  0.12698 0.19661 0.01794 0.37452 ,\
  0.14286 0.20588 0.02001 0.41945 ,\
  0.15873 0.21555 0.02211 0.46361 ,\
  0.17460 0.22652 0.02412 0.50612 ,\
  0.19048 0.23951 0.02604 0.54629 ,\
  0.20635 0.25090 0.02806 0.58900 ,\
  0.22222 0.24982 0.03084 0.64640 ,\
  0.23810 0.21424 0.03500 0.73288 ,\
  0.25397 0.05803 0.07286 0.83102 ,\
  0.26984 0.03675 0.16476 0.77039 ,\
  0.28571 0.03353 0.22112 0.70305 ,\
  0.30159 0.03073 0.26258 0.64033 ,\
  0.31746 0.02819 0.29569 0.58488 ,\
  0.33333 0.02563 0.32364 0.53765 ,\
  0.34921 0.02397 0.34826 0.49833 ,\
  0.36508 0.02247 0.37072 0.46627 ,\
  0.38095 0.02136 0.39178 0.44029 ,\
  0.39683 0.02032 0.41194 0.41924 ,\
  0.41270 0.02081 0.43160 0.40045 ,\
  0.42857 0.02185 0.45115 0.38031 ,\
  0.44444 0.02307 0.47063 0.35871 ,\
  0.46032 0.02337 0.49007 0.33549 ,\
  0.47619 0.02495 0.50942 0.31062 ,\
  0.49206 0.02541 0.52875 0.28379 ,\
  0.50794 0.02655 0.54800 0.25510 ,\
  0.52381 0.02753 0.56720 0.22462 ,\
  0.53968 0.02888 0.58631 0.19302 ,\
  0.55556 0.02892 0.60536 0.16143 ,\
  0.57143 0.02983 0.62429 0.13306 ,\
  0.58730 0.03083 0.64311 0.11262 ,\
  0.60317 0.03162 0.66187 0.10245 ,\
  0.61905 0.03312 0.68068 0.09495 ,\
  0.63492 0.03454 0.69970 0.06993 ,\
  0.65079 0.08572 0.71772 0.03422 ,\
  0.66667 0.17514 0.73311 0.03503 ,\
  0.68254 0.25152 0.74727 0.03609 ,\
  0.69841 0.32394 0.76014 0.03640 ,\
  0.71429 0.39508 0.77160 0.03739 ,\
  0.73016 0.46533 0.78165 0.03729 ,\
  0.74603 0.53518 0.79025 0.03777 ,\
  0.76190 0.60449 0.79743 0.03798 ,\
  0.77778 0.67324 0.80320 0.03898 ,\
  0.79365 0.74121 0.80765 0.03898 ,\
  0.80952 0.80972 0.81041 0.03891 ,\
  0.82540 0.88468 0.80932 0.04221 ,\
  0.84127 0.96104 0.80431 0.18243 ,\
  0.85714 0.97662 0.81379 0.50957 ,\
  0.87302 0.98298 0.82957 0.64408 ,\
  0.88889 0.98700 0.84810 0.72850 ,\
  0.90476 0.98994 0.86819 0.78938 ,\
  0.92063 0.99213 0.88929 0.83711 ,\
  0.93651 0.99398 0.91098 0.87664 ,\
  0.95238 0.99574 0.93300 0.91092 ,\
  0.96825 0.99711 0.95530 0.94221 ,\
  0.98413 0.99851 0.97766 0.97157 ,\
  1.0 1.0 1.0 1.0)

# END