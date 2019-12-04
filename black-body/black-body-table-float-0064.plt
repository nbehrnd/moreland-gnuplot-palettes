
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
  0.01587 0.04977 0.01525 0.00853 ,\
  0.03175 0.08486 0.03050 0.01706 ,\
  0.04762 0.11060 0.04547 0.02559 ,\
  0.06349 0.13183 0.05817 0.03412 ,\
  0.07937 0.15397 0.06665 0.04284 ,\
  0.09524 0.17768 0.07252 0.05082 ,\
  0.11111 0.20190 0.07810 0.05781 ,\
  0.12698 0.22660 0.08340 0.06403 ,\
  0.14286 0.25172 0.08842 0.06960 ,\
  0.15873 0.27724 0.09317 0.07464 ,\
  0.17460 0.30315 0.09765 0.07921 ,\
  0.19048 0.32940 0.10186 0.08343 ,\
  0.20635 0.35597 0.10579 0.08763 ,\
  0.22222 0.38285 0.10946 0.09185 ,\
  0.23810 0.41002 0.11286 0.09607 ,\
  0.25397 0.43748 0.11597 0.10031 ,\
  0.26984 0.46522 0.11881 0.10456 ,\
  0.28571 0.49324 0.12134 0.10882 ,\
  0.30159 0.52152 0.12358 0.11309 ,\
  0.31746 0.55007 0.12551 0.11738 ,\
  0.33333 0.57887 0.12712 0.12168 ,\
  0.34921 0.60792 0.12840 0.12600 ,\
  0.36508 0.63721 0.12933 0.13033 ,\
  0.38095 0.66674 0.12989 0.13467 ,\
  0.39683 0.69129 0.14129 0.13626 ,\
  0.41270 0.70649 0.17034 0.13253 ,\
  0.42857 0.72165 0.19689 0.12827 ,\
  0.44444 0.73680 0.22180 0.12341 ,\
  0.46032 0.75192 0.24556 0.11785 ,\
  0.47619 0.76702 0.26847 0.11150 ,\
  0.49206 0.78211 0.29075 0.10419 ,\
  0.50794 0.79717 0.31254 0.09572 ,\
  0.52381 0.81221 0.33394 0.08578 ,\
  0.53968 0.82724 0.35505 0.07388 ,\
  0.55556 0.84225 0.37592 0.05915 ,\
  0.57143 0.85724 0.39660 0.03972 ,\
  0.58730 0.87038 0.41857 0.01972 ,\
  0.60317 0.87434 0.44697 0.01817 ,\
  0.61905 0.87803 0.47466 0.01680 ,\
  0.63492 0.88142 0.50176 0.01562 ,\
  0.65079 0.88452 0.52838 0.01464 ,\
  0.66667 0.88733 0.55460 0.01388 ,\
  0.68254 0.88983 0.58048 0.01336 ,\
  0.69841 0.89201 0.60608 0.01308 ,\
  0.71429 0.89389 0.63145 0.01306 ,\
  0.73016 0.89543 0.65662 0.01331 ,\
  0.74603 0.89665 0.68162 0.01385 ,\
  0.76190 0.89753 0.70647 0.01469 ,\
  0.77778 0.89806 0.73121 0.01585 ,\
  0.79365 0.89824 0.75584 0.01733 ,\
  0.80952 0.89805 0.78039 0.01916 ,\
  0.82540 0.89749 0.80487 0.02134 ,\
  0.84127 0.89654 0.82929 0.02390 ,\
  0.85714 0.91370 0.84565 0.22277 ,\
  0.87302 0.92965 0.86213 0.33192 ,\
  0.88889 0.94424 0.87876 0.42500 ,\
  0.90476 0.95736 0.89557 0.51151 ,\
  0.92063 0.96893 0.91254 0.59484 ,\
  0.93651 0.97886 0.92968 0.67655 ,\
  0.95238 0.98704 0.94699 0.75751 ,\
  0.96825 0.99337 0.96448 0.83821 ,\
  0.98413 0.99774 0.98215 0.91898 ,\
  1.0 1.0 1.0 1.0)

# END