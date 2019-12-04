
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
  0.03226 0.08579 0.03099 0.01733 ,\
  0.06452 0.13317 0.05887 0.03468 ,\
  0.09677 0.18000 0.07307 0.05154 ,\
  0.12903 0.22982 0.08406 0.06478 ,\
  0.16129 0.28140 0.09391 0.07541 ,\
  0.19355 0.33452 0.10264 0.08425 ,\
  0.22581 0.38896 0.11025 0.09280 ,\
  0.25806 0.44461 0.11673 0.10140 ,\
  0.29032 0.50142 0.12203 0.11006 ,\
  0.32258 0.55933 0.12607 0.11877 ,\
  0.35484 0.61829 0.12877 0.12753 ,\
  0.38710 0.67824 0.13001 0.13635 ,\
  0.41935 0.71285 0.18172 0.13082 ,\
  0.45161 0.74363 0.23265 0.12099 ,\
  0.48387 0.77432 0.27932 0.10809 ,\
  0.51613 0.80494 0.32363 0.09080 ,\
  0.54839 0.83547 0.36652 0.06624 ,\
  0.58065 0.86594 0.40854 0.02603 ,\
  0.61290 0.87663 0.46402 0.01731 ,\
  0.64516 0.88346 0.51898 0.01496 ,\
  0.67742 0.88905 0.57216 0.01350 ,\
  0.70968 0.89338 0.62411 0.01303 ,\
  0.74194 0.89637 0.67518 0.01368 ,\
  0.77419 0.89797 0.72563 0.01556 ,\
  0.80645 0.89812 0.77564 0.01878 ,\
  0.83871 0.89672 0.82535 0.02346 ,\
  0.87097 0.92767 0.85999 0.31909 ,\
  0.90323 0.95616 0.89393 0.50332 ,\
  0.93548 0.97827 0.92856 0.67131 ,\
  0.96774 0.99320 0.96391 0.83561 ,\
  1.0 1.0 1.0 1.0)

# END