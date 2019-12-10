
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
  0.01587 0.35183 0.31168 0.78128 ,\
  0.03175 0.36889 0.33996 0.80500 ,\
  0.04762 0.38599 0.36794 0.82761 ,\
  0.06349 0.40315 0.39559 0.84905 ,\
  0.07937 0.42038 0.42289 0.86925 ,\
  0.09524 0.43769 0.44979 0.88817 ,\
  0.11111 0.45509 0.47626 0.90576 ,\
  0.12698 0.47258 0.50227 0.92198 ,\
  0.14286 0.49017 0.52775 0.93679 ,\
  0.15873 0.50784 0.55266 0.95014 ,\
  0.17460 0.52559 0.57696 0.96202 ,\
  0.19048 0.54341 0.60060 0.97238 ,\
  0.20635 0.56128 0.62352 0.98121 ,\
  0.22222 0.57919 0.64568 0.98848 ,\
  0.23810 0.59712 0.66703 0.99418 ,\
  0.25397 0.61504 0.68753 0.99831 ,\
  0.26984 0.63292 0.70712 1.00000 ,\
  0.28571 0.65074 0.72577 1.00000 ,\
  0.30159 0.66846 0.74343 1.00000 ,\
  0.31746 0.68605 0.76005 0.99890 ,\
  0.33333 0.70346 0.77560 0.99509 ,\
  0.34921 0.72067 0.79003 0.98971 ,\
  0.36508 0.73762 0.80331 0.98279 ,\
  0.38095 0.75428 0.81541 0.97434 ,\
  0.39683 0.77061 0.82629 0.96438 ,\
  0.41270 0.78655 0.83592 0.95296 ,\
  0.42857 0.80208 0.84427 0.94009 ,\
  0.44444 0.81712 0.85132 0.92582 ,\
  0.46032 0.83166 0.85704 0.91017 ,\
  0.47619 0.84563 0.86141 0.89320 ,\
  0.49206 0.85899 0.86441 0.87494 ,\
  0.50794 0.87300 0.86181 0.85421 ,\
  0.52381 0.88714 0.85362 0.83153 ,\
  0.53968 0.89996 0.84409 0.80835 ,\
  0.55556 0.91144 0.83324 0.78472 ,\
  0.57143 0.92157 0.82110 0.76072 ,\
  0.58730 0.93035 0.80769 0.73641 ,\
  0.60317 0.93776 0.79303 0.71183 ,\
  0.61905 0.94381 0.77716 0.68705 ,\
  0.63492 0.94847 0.76010 0.66212 ,\
  0.65079 0.95176 0.74189 0.63710 ,\
  0.66667 0.95368 0.72256 0.61205 ,\
  0.68254 0.95421 0.70214 0.58701 ,\
  0.69841 0.95336 0.68067 0.56204 ,\
  0.71429 0.95115 0.65817 0.53719 ,\
  0.73016 0.94756 0.63469 0.51250 ,\
  0.74603 0.94262 0.61024 0.48802 ,\
  0.76190 0.93633 0.58486 0.46379 ,\
  0.77778 0.92871 0.55858 0.43985 ,\
  0.79365 0.91977 0.53141 0.41625 ,\
  0.80952 0.90953 0.50337 0.39302 ,\
  0.82540 0.89800 0.47446 0.37020 ,\
  0.84127 0.88522 0.44466 0.34782 ,\
  0.85714 0.87120 0.41395 0.32592 ,\
  0.87302 0.85597 0.38226 0.30452 ,\
  0.88889 0.83957 0.34948 0.28365 ,\
  0.90476 0.82201 0.31543 0.26334 ,\
  0.92063 0.80334 0.27980 0.24362 ,\
  0.93651 0.78360 0.24208 0.22451 ,\
  0.95238 0.76281 0.20127 0.20602 ,\
  0.96825 0.74103 0.15530 0.18820 ,\
  0.98413 0.71828 0.09834 0.17104 ,\
  1.0 0.6946256248213637 0.0029646104576792577 0.15458182827759628)

# END