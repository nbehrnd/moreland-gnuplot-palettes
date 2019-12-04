
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
  0.03226 0.29723 0.02718 0.37864 ,\
  0.06452 0.30728 0.08024 0.42127 ,\
  0.09677 0.31233 0.12585 0.45799 ,\
  0.12903 0.31237 0.16880 0.48816 ,\
  0.16129 0.30779 0.21020 0.51162 ,\
  0.19355 0.29933 0.25010 0.52882 ,\
  0.22581 0.28806 0.28836 0.54072 ,\
  0.25806 0.27510 0.32489 0.54851 ,\
  0.29032 0.26143 0.35980 0.55339 ,\
  0.32258 0.24773 0.39329 0.55631 ,\
  0.35484 0.23427 0.42568 0.55793 ,\
  0.38710 0.22088 0.45729 0.55855 ,\
  0.41935 0.20712 0.48844 0.55815 ,\
  0.45161 0.19239 0.51938 0.55643 ,\
  0.48387 0.17627 0.55026 0.55290 ,\
  0.51613 0.15890 0.58117 0.54694 ,\
  0.54839 0.14180 0.61206 0.53788 ,\
  0.58065 0.12893 0.64281 0.52511 ,\
  0.61290 0.12738 0.67322 0.50805 ,\
  0.64516 0.14418 0.70301 0.48627 ,\
  0.67742 0.18055 0.73190 0.45941 ,\
  0.70968 0.23247 0.75952 0.42721 ,\
  0.74194 0.29560 0.78553 0.38947 ,\
  0.77419 0.36691 0.80957 0.34605 ,\
  0.80645 0.44452 0.83128 0.29679 ,\
  0.83871 0.52701 0.85038 0.24157 ,\
  0.87097 0.61297 0.86671 0.18038 ,\
  0.90323 0.70065 0.88040 0.11403 ,\
  0.93548 0.78792 0.89197 0.05032 ,\
  0.96774 0.87260 0.90231 0.04382 ,\
  1.0 0.9529994532916154 0.9125452328290099 0.11085876909361342)

# END