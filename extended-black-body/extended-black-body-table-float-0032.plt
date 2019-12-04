
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
  0.03226 0.07361 0.02552 0.11233 ,\
  0.06452 0.10425 0.05038 0.19514 ,\
  0.09677 0.13240 0.05765 0.28450 ,\
  0.12903 0.15898 0.05922 0.37874 ,\
  0.16129 0.18320 0.05655 0.47716 ,\
  0.19355 0.20520 0.04810 0.57930 ,\
  0.22581 0.23689 0.02910 0.67424 ,\
  0.25806 0.30653 0.00000 0.73349 ,\
  0.29032 0.37341 0.00000 0.79364 ,\
  0.32258 0.43917 0.00000 0.85467 ,\
  0.35484 0.53906 0.00000 0.84407 ,\
  0.38710 0.66791 0.00000 0.67089 ,\
  0.41935 0.75480 0.00000 0.50298 ,\
  0.45161 0.81902 0.00000 0.33808 ,\
  0.48387 0.85977 0.12418 0.23964 ,\
  0.51613 0.88356 0.21481 0.23833 ,\
  0.54839 0.90693 0.28317 0.23604 ,\
  0.58065 0.92988 0.34274 0.23268 ,\
  0.61290 0.95242 0.39762 0.22813 ,\
  0.64516 0.97454 0.44966 0.22224 ,\
  0.67742 0.97265 0.51725 0.20961 ,\
  0.70968 0.96275 0.58429 0.19255 ,\
  0.74194 0.95060 0.64762 0.17116 ,\
  0.77419 0.93599 0.70837 0.14338 ,\
  0.80645 0.91867 0.76725 0.10432 ,\
  0.83871 0.89834 0.82476 0.03292 ,\
  0.87097 0.92767 0.85999 0.31909 ,\
  0.90323 0.95616 0.89393 0.50332 ,\
  0.93548 0.97827 0.92856 0.67131 ,\
  0.96774 0.99320 0.96391 0.83561 ,\
  1.0 1.0 1.0 1.0)

# END