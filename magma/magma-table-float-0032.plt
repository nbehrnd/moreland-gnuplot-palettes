
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
  0.03226 0.02100 0.01113 0.07091 ,\
  0.06452 0.05785 0.02920 0.13789 ,\
  0.09677 0.10005 0.04764 0.20961 ,\
  0.12903 0.14740 0.05649 0.28656 ,\
  0.16129 0.20109 0.05057 0.36446 ,\
  0.19355 0.25756 0.03169 0.42943 ,\
  0.22581 0.30990 0.02515 0.46969 ,\
  0.25806 0.35756 0.04137 0.49101 ,\
  0.29032 0.40320 0.06772 0.50226 ,\
  0.32258 0.44859 0.09325 0.50804 ,\
  0.35484 0.49457 0.11646 0.51022 ,\
  0.38710 0.54148 0.13754 0.50930 ,\
  0.41935 0.58940 0.15705 0.50519 ,\
  0.45161 0.63824 0.17567 0.49757 ,\
  0.48387 0.68768 0.19428 0.48607 ,\
  0.51613 0.73723 0.21398 0.47042 ,\
  0.54839 0.78600 0.23633 0.45060 ,\
  0.58065 0.83266 0.26340 0.42715 ,\
  0.61290 0.87507 0.29775 0.40184 ,\
  0.64516 0.91051 0.34154 0.37865 ,\
  0.67742 0.93683 0.39466 0.36384 ,\
  0.70968 0.95431 0.45391 0.36252 ,\
  0.74194 0.96512 0.51550 0.37543 ,\
  0.77419 0.97143 0.57724 0.40027 ,\
  0.80645 0.97470 0.63837 0.43427 ,\
  0.83871 0.97578 0.69877 0.47524 ,\
  0.87097 0.97520 0.75858 0.52169 ,\
  0.90323 0.97337 0.81797 0.57270 ,\
  0.93548 0.97073 0.87710 0.62769 ,\
  0.96774 0.96792 0.93603 0.68609 ,\
  1.0 0.9656629436911562 0.9948555925973216 0.7469125243616072)

# END