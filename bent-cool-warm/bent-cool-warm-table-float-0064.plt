
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
  0.01587 0.34619 0.30634 0.76684 ,\
  0.03175 0.35807 0.32923 0.77682 ,\
  0.04762 0.37046 0.35181 0.78642 ,\
  0.06349 0.38335 0.37416 0.79567 ,\
  0.07937 0.39676 0.39631 0.80456 ,\
  0.09524 0.41069 0.41829 0.81311 ,\
  0.11111 0.42515 0.44013 0.82132 ,\
  0.12698 0.44014 0.46186 0.82921 ,\
  0.14286 0.45568 0.48347 0.83679 ,\
  0.15873 0.47175 0.50500 0.84406 ,\
  0.17460 0.48836 0.52644 0.85104 ,\
  0.19048 0.50553 0.54780 0.85773 ,\
  0.20635 0.52323 0.56909 0.86415 ,\
  0.22222 0.54149 0.59031 0.87031 ,\
  0.23810 0.56030 0.61146 0.87623 ,\
  0.25397 0.57966 0.63255 0.88191 ,\
  0.26984 0.59956 0.65357 0.88736 ,\
  0.28571 0.62002 0.67453 0.89261 ,\
  0.30159 0.64103 0.69542 0.89765 ,\
  0.31746 0.66260 0.71624 0.90252 ,\
  0.33333 0.68471 0.73700 0.90721 ,\
  0.34921 0.70737 0.75768 0.91175 ,\
  0.36508 0.73059 0.77828 0.91614 ,\
  0.38095 0.75436 0.79881 0.92041 ,\
  0.39683 0.77867 0.81926 0.92457 ,\
  0.41270 0.80353 0.83963 0.92863 ,\
  0.42857 0.82894 0.85991 0.93261 ,\
  0.44444 0.85490 0.88010 0.93652 ,\
  0.46032 0.88140 0.90019 0.94039 ,\
  0.47619 0.90845 0.92019 0.94422 ,\
  0.49206 0.93604 0.94009 0.94803 ,\
  0.50794 0.94662 0.93812 0.93237 ,\
  0.52381 0.93983 0.91432 0.89762 ,\
  0.53968 0.93310 0.89044 0.86341 ,\
  0.55556 0.92639 0.86650 0.82975 ,\
  0.57143 0.91968 0.84248 0.79665 ,\
  0.58730 0.91297 0.81838 0.76413 ,\
  0.60317 0.90622 0.79421 0.73219 ,\
  0.61905 0.89942 0.76996 0.70084 ,\
  0.63492 0.89256 0.74562 0.67010 ,\
  0.65079 0.88562 0.72120 0.63998 ,\
  0.66667 0.87859 0.69667 0.61049 ,\
  0.68254 0.87146 0.67203 0.58164 ,\
  0.69841 0.86421 0.64728 0.55343 ,\
  0.71429 0.85684 0.62240 0.52588 ,\
  0.73016 0.84933 0.59736 0.49900 ,\
  0.74603 0.84168 0.57216 0.47280 ,\
  0.76190 0.83388 0.54676 0.44729 ,\
  0.77778 0.82592 0.52114 0.42247 ,\
  0.79365 0.81779 0.49526 0.39835 ,\
  0.80952 0.80949 0.46907 0.37496 ,\
  0.82540 0.80101 0.44250 0.35229 ,\
  0.84127 0.79235 0.41548 0.33036 ,\
  0.85714 0.78350 0.38791 0.30918 ,\
  0.87302 0.77445 0.35965 0.28876 ,\
  0.88889 0.76521 0.33051 0.26911 ,\
  0.90476 0.75576 0.30022 0.25026 ,\
  0.92063 0.74611 0.26838 0.23220 ,\
  0.93651 0.73625 0.23434 0.21497 ,\
  0.95238 0.72617 0.19698 0.19857 ,\
  0.96825 0.71588 0.15401 0.18303 ,\
  0.98413 0.70536 0.09922 0.16836 ,\
  1.0 0.694625624821 0.00296461045768 0.154581828278)

# END