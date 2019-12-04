
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
  0.01587 0.06659 0.00317 0.06609 ,\
  0.03175 0.10538 0.00562 0.11719 ,\
  0.04762 0.12612 0.00838 0.17496 ,\
  0.06349 0.13768 0.01106 0.23157 ,\
  0.07937 0.14504 0.01345 0.28228 ,\
  0.09524 0.15204 0.01569 0.32762 ,\
  0.11111 0.16114 0.01765 0.36988 ,\
  0.12698 0.17269 0.01956 0.40905 ,\
  0.14286 0.16524 0.02248 0.47022 ,\
  0.15873 0.02799 0.03731 0.58389 ,\
  0.17460 0.02386 0.12754 0.49953 ,\
  0.19048 0.02024 0.17324 0.42247 ,\
  0.20635 0.01721 0.20433 0.36092 ,\
  0.22222 0.01514 0.22852 0.31502 ,\
  0.23810 0.01371 0.24928 0.28195 ,\
  0.25397 0.01305 0.26830 0.25777 ,\
  0.26984 0.01395 0.28675 0.23426 ,\
  0.28571 0.01474 0.30501 0.20872 ,\
  0.30159 0.01560 0.32309 0.18081 ,\
  0.31746 0.01645 0.34102 0.15022 ,\
  0.33333 0.01726 0.35878 0.11729 ,\
  0.34921 0.01821 0.37636 0.08452 ,\
  0.36508 0.01909 0.39372 0.05925 ,\
  0.38095 0.02010 0.41092 0.04973 ,\
  0.39683 0.02076 0.42831 0.03150 ,\
  0.41270 0.08132 0.44352 0.02124 ,\
  0.42857 0.15449 0.45613 0.02184 ,\
  0.44444 0.22436 0.46660 0.02243 ,\
  0.46032 0.29317 0.47482 0.02284 ,\
  0.47619 0.36109 0.48079 0.02302 ,\
  0.49206 0.42787 0.48459 0.02309 ,\
  0.50794 0.49471 0.48591 0.02393 ,\
  0.52381 0.57103 0.48100 0.02761 ,\
  0.53968 0.65924 0.46635 0.03174 ,\
  0.55556 0.75902 0.43742 0.03640 ,\
  0.57143 0.86695 0.38836 0.04137 ,\
  0.58730 0.95677 0.33450 0.09299 ,\
  0.60317 0.96250 0.36483 0.21327 ,\
  0.61905 0.96532 0.39733 0.27264 ,\
  0.63492 0.96820 0.42738 0.33256 ,\
  0.65079 0.97246 0.45213 0.42362 ,\
  0.66667 0.97492 0.47531 0.52373 ,\
  0.68254 0.97599 0.49760 0.62046 ,\
  0.69841 0.97702 0.51870 0.71032 ,\
  0.71429 0.97802 0.53924 0.79243 ,\
  0.73016 0.97892 0.55978 0.86613 ,\
  0.74603 0.97994 0.58063 0.93097 ,\
  0.76190 0.97301 0.60768 0.98120 ,\
  0.77778 0.93332 0.65780 0.98358 ,\
  0.79365 0.90831 0.69702 0.98552 ,\
  0.80952 0.89467 0.72954 0.98706 ,\
  0.82540 0.88993 0.75764 0.98833 ,\
  0.84127 0.89205 0.78273 0.98964 ,\
  0.85714 0.89892 0.80593 0.99058 ,\
  0.87302 0.90900 0.82791 0.99169 ,\
  0.88889 0.91682 0.85062 0.99286 ,\
  0.90476 0.92018 0.87478 0.99394 ,\
  0.92063 0.92158 0.89942 0.99516 ,\
  0.93651 0.92362 0.92373 0.99627 ,\
  0.95238 0.92840 0.94717 0.99649 ,\
  0.96825 0.93778 0.96917 0.99697 ,\
  0.98413 0.95569 0.98861 0.99787 ,\
  1.0 1.0 1.0 1.0)

# END