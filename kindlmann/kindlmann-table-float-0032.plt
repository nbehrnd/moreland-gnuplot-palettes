
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
  0.03226 0.10879 0.00539 0.11197 ,\
  0.06452 0.15165 0.00992 0.20717 ,\
  0.09677 0.17743 0.01387 0.29117 ,\
  0.12903 0.19782 0.01819 0.38033 ,\
  0.16129 0.21721 0.02245 0.47059 ,\
  0.19355 0.24230 0.02654 0.55366 ,\
  0.22581 0.24616 0.03161 0.66277 ,\
  0.25806 0.03919 0.10206 0.82022 ,\
  0.29032 0.03301 0.23430 0.68412 ,\
  0.32258 0.02734 0.30516 0.56874 ,\
  0.35484 0.02332 0.35643 0.48619 ,\
  0.38710 0.02092 0.39967 0.43162 ,\
  0.41935 0.02146 0.43980 0.39218 ,\
  0.45161 0.02314 0.47942 0.34843 ,\
  0.48387 0.02547 0.51877 0.29790 ,\
  0.51613 0.02714 0.55792 0.23958 ,\
  0.54839 0.02847 0.59678 0.17546 ,\
  0.58065 0.03124 0.63521 0.12006 ,\
  0.61290 0.03274 0.67337 0.09925 ,\
  0.64516 0.04154 0.71199 0.03399 ,\
  0.67742 0.22757 0.74284 0.03594 ,\
  0.70968 0.37454 0.76842 0.03719 ,\
  0.74194 0.51723 0.78816 0.03802 ,\
  0.77419 0.65780 0.80201 0.03912 ,\
  0.80645 0.79605 0.81012 0.03877 ,\
  0.83871 0.95332 0.80451 0.04606 ,\
  0.87097 0.98235 0.82734 0.63046 ,\
  0.90323 0.98969 0.86620 0.78418 ,\
  0.93548 0.99398 0.90953 0.87418 ,\
  0.96774 0.99703 0.95459 0.94126 ,\
  1.0 1.0 1.0 1.0)

# END