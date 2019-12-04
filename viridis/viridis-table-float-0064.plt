
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
  0.00000 0.28236 0.00000 0.33101 ,\
  0.01587 0.29026 0.00290 0.35501 ,\
  0.03175 0.29703 0.02633 0.37792 ,\
  0.04762 0.30263 0.05386 0.39963 ,\
  0.06349 0.30704 0.07871 0.42001 ,\
  0.07937 0.31023 0.10173 0.43895 ,\
  0.09524 0.31220 0.12375 0.45638 ,\
  0.11111 0.31295 0.14516 0.47222 ,\
  0.12698 0.31251 0.16612 0.48643 ,\
  0.14286 0.31094 0.18672 0.49901 ,\
  0.15873 0.30830 0.20697 0.50999 ,\
  0.17460 0.30471 0.22686 0.51943 ,\
  0.19048 0.30028 0.24637 0.52743 ,\
  0.20635 0.29513 0.26549 0.53411 ,\
  0.22222 0.28941 0.28419 0.53962 ,\
  0.23810 0.28326 0.30248 0.54410 ,\
  0.25397 0.27680 0.32035 0.54771 ,\
  0.26984 0.27015 0.33781 0.55057 ,\
  0.28571 0.26340 0.35490 0.55283 ,\
  0.30159 0.25663 0.37164 0.55459 ,\
  0.31746 0.24989 0.38806 0.55594 ,\
  0.33333 0.24321 0.40419 0.55697 ,\
  0.34921 0.23660 0.42009 0.55772 ,\
  0.36508 0.23002 0.43578 0.55823 ,\
  0.38095 0.22344 0.45132 0.55851 ,\
  0.39683 0.21679 0.46672 0.55854 ,\
  0.41270 0.21002 0.48204 0.55833 ,\
  0.42857 0.20303 0.49729 0.55781 ,\
  0.44444 0.19578 0.51251 0.55695 ,\
  0.46032 0.18819 0.52771 0.55568 ,\
  0.47619 0.18024 0.54291 0.55394 ,\
  0.49206 0.17194 0.55811 0.55164 ,\
  0.50794 0.16338 0.57332 0.54872 ,\
  0.52381 0.15471 0.58853 0.54508 ,\
  0.53968 0.14623 0.60373 0.54066 ,\
  0.55556 0.13838 0.61891 0.53538 ,\
  0.57143 0.13183 0.63405 0.52917 ,\
  0.58730 0.12742 0.64912 0.52195 ,\
  0.60317 0.12616 0.66410 0.51367 ,\
  0.61905 0.12900 0.67895 0.50428 ,\
  0.63492 0.13660 0.69364 0.49372 ,\
  0.65079 0.14915 0.70813 0.48196 ,\
  0.66667 0.16641 0.72239 0.46895 ,\
  0.68254 0.18785 0.73637 0.45467 ,\
  0.69841 0.21287 0.75004 0.43908 ,\
  0.71429 0.24090 0.76334 0.42216 ,\
  0.73016 0.27148 0.77625 0.40391 ,\
  0.74603 0.30425 0.78870 0.38428 ,\
  0.76190 0.33891 0.80067 0.36327 ,\
  0.77778 0.37525 0.81210 0.34086 ,\
  0.79365 0.41306 0.82296 0.31704 ,\
  0.80952 0.45219 0.83321 0.29179 ,\
  0.82540 0.49247 0.84283 0.26509 ,\
  0.84127 0.53374 0.85177 0.23694 ,\
  0.85714 0.57582 0.86005 0.20734 ,\
  0.87302 0.61851 0.86766 0.17632 ,\
  0.88889 0.66160 0.87462 0.14401 ,\
  0.90476 0.70483 0.88100 0.11079 ,\
  0.92063 0.74794 0.88686 0.07780 ,\
  0.93651 0.79066 0.89231 0.04865 ,\
  0.95238 0.83272 0.89747 0.03381 ,\
  0.96825 0.87392 0.90247 0.04448 ,\
  0.98413 0.91404 0.90746 0.07415 ,\
  1.0 0.9529994532916154 0.9125452328290099 0.11085876909361342)

# END