
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
  0.01587 0.00958 0.00418 0.03927 ,\
  0.03175 0.02137 0.01023 0.07310 ,\
  0.04762 0.03901 0.01754 0.10768 ,\
  0.06349 0.06048 0.02510 0.14349 ,\
  0.07937 0.08308 0.03173 0.18063 ,\
  0.09524 0.10715 0.03607 0.21893 ,\
  0.11111 0.13306 0.03667 0.25767 ,\
  0.12698 0.16054 0.03290 0.29546 ,\
  0.14286 0.18889 0.02556 0.33014 ,\
  0.15873 0.21709 0.01718 0.35959 ,\
  0.17460 0.24428 0.01073 0.38281 ,\
  0.19048 0.27021 0.00804 0.40018 ,\
  0.20635 0.29502 0.00952 0.41278 ,\
  0.22222 0.31902 0.01483 0.42173 ,\
  0.23810 0.34251 0.02335 0.42792 ,\
  0.25397 0.36570 0.03451 0.43197 ,\
  0.26984 0.38874 0.04735 0.43430 ,\
  0.28571 0.41175 0.05977 0.43517 ,\
  0.30159 0.43478 0.07160 0.43477 ,\
  0.31746 0.45789 0.08291 0.43316 ,\
  0.33333 0.48109 0.09379 0.43042 ,\
  0.34921 0.50438 0.10433 0.42654 ,\
  0.36508 0.52776 0.11465 0.42155 ,\
  0.38095 0.55120 0.12486 0.41543 ,\
  0.39683 0.57467 0.13506 0.40819 ,\
  0.41270 0.59813 0.14538 0.39982 ,\
  0.42857 0.62153 0.15592 0.39033 ,\
  0.44444 0.64481 0.16682 0.37973 ,\
  0.46032 0.66789 0.17820 0.36806 ,\
  0.47619 0.69072 0.19019 0.35536 ,\
  0.49206 0.71319 0.20290 0.34168 ,\
  0.50794 0.73522 0.21645 0.32710 ,\
  0.52381 0.75670 0.23096 0.31168 ,\
  0.53968 0.77755 0.24652 0.29550 ,\
  0.55556 0.79765 0.26320 0.27866 ,\
  0.57143 0.81689 0.28106 0.26124 ,\
  0.58730 0.83519 0.30012 0.24331 ,\
  0.60317 0.85245 0.32039 0.22492 ,\
  0.61905 0.86859 0.34184 0.20610 ,\
  0.63492 0.88353 0.36444 0.18686 ,\
  0.65079 0.89722 0.38812 0.16715 ,\
  0.66667 0.90961 0.41281 0.14688 ,\
  0.68254 0.92067 0.43843 0.12595 ,\
  0.69841 0.93038 0.46489 0.10415 ,\
  0.71429 0.93871 0.49212 0.08125 ,\
  0.73016 0.94564 0.52004 0.05698 ,\
  0.74603 0.95117 0.54858 0.03156 ,\
  0.76190 0.95529 0.57768 0.01269 ,\
  0.77778 0.95796 0.60728 0.00418 ,\
  0.79365 0.95919 0.63731 0.00800 ,\
  0.80952 0.95895 0.66775 0.02683 ,\
  0.82540 0.95724 0.69852 0.06073 ,\
  0.84127 0.95406 0.72957 0.09771 ,\
  0.85714 0.94941 0.76085 0.13660 ,\
  0.87302 0.94339 0.79225 0.17794 ,\
  0.88889 0.93615 0.82364 0.22244 ,\
  0.90476 0.92808 0.85481 0.27095 ,\
  0.92063 0.91996 0.88538 0.32447 ,\
  0.93651 0.91344 0.91471 0.38392 ,\
  0.95238 0.91159 0.94172 0.44901 ,\
  0.96825 0.91823 0.96531 0.51654 ,\
  0.98413 0.93482 0.98540 0.58137 ,\
  1.0 0.9593995073432898 1.0 0.6406264784793354)

# END