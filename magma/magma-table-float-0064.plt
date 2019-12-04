
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
  0.01587 0.00936 0.00437 0.03780 ,\
  0.03175 0.02055 0.01088 0.06984 ,\
  0.04762 0.03676 0.01918 0.10231 ,\
  0.06349 0.05653 0.02858 0.13570 ,\
  0.07937 0.07684 0.03828 0.17022 ,\
  0.09524 0.09794 0.04692 0.20607 ,\
  0.11111 0.12035 0.05306 0.24325 ,\
  0.12698 0.14420 0.05631 0.28155 ,\
  0.14286 0.16968 0.05602 0.32039 ,\
  0.15873 0.19664 0.05165 0.35850 ,\
  0.17460 0.22450 0.04340 0.39388 ,\
  0.19048 0.25228 0.03340 0.42426 ,\
  0.20635 0.27902 0.02632 0.44834 ,\
  0.22222 0.30436 0.02469 0.46635 ,\
  0.23810 0.32846 0.02890 0.47947 ,\
  0.25397 0.35167 0.03826 0.48900 ,\
  0.26984 0.37434 0.05080 0.49595 ,\
  0.28571 0.39673 0.06392 0.50105 ,\
  0.30159 0.41903 0.07688 0.50476 ,\
  0.31746 0.44136 0.08935 0.50740 ,\
  0.33333 0.46383 0.10125 0.50913 ,\
  0.34921 0.48648 0.11257 0.51007 ,\
  0.36508 0.50935 0.12336 0.51026 ,\
  0.38095 0.53246 0.13366 0.50971 ,\
  0.39683 0.55583 0.14356 0.50841 ,\
  0.41270 0.57943 0.15312 0.50631 ,\
  0.42857 0.60327 0.16242 0.50339 ,\
  0.44444 0.62732 0.17157 0.49959 ,\
  0.46032 0.65154 0.18065 0.49486 ,\
  0.47619 0.67588 0.18980 0.48918 ,\
  0.49206 0.70028 0.19912 0.48250 ,\
  0.50794 0.72467 0.20880 0.47480 ,\
  0.52381 0.74895 0.21900 0.46607 ,\
  0.53968 0.77298 0.22993 0.45634 ,\
  0.55556 0.79661 0.24186 0.44567 ,\
  0.57143 0.81965 0.25505 0.43415 ,\
  0.58730 0.84183 0.26981 0.42199 ,\
  0.60317 0.86288 0.28647 0.40948 ,\
  0.61905 0.88245 0.30531 0.39708 ,\
  0.63492 0.90019 0.32654 0.38542 ,\
  0.65079 0.91580 0.35018 0.37526 ,\
  0.66667 0.92912 0.37605 0.36743 ,\
  0.68254 0.94016 0.40376 0.36264 ,\
  0.69841 0.94909 0.43279 0.36131 ,\
  0.71429 0.95620 0.46264 0.36354 ,\
  0.73016 0.96179 0.49292 0.36919 ,\
  0.74603 0.96613 0.52336 0.37799 ,\
  0.76190 0.96945 0.55377 0.38958 ,\
  0.77778 0.97193 0.58407 0.40364 ,\
  0.79365 0.97371 0.61420 0.41984 ,\
  0.80952 0.97489 0.64415 0.43790 ,\
  0.82540 0.97556 0.67393 0.45760 ,\
  0.84127 0.97578 0.70354 0.47875 ,\
  0.85714 0.97563 0.73301 0.50119 ,\
  0.87302 0.97512 0.76236 0.52481 ,\
  0.88889 0.97432 0.79161 0.54951 ,\
  0.90476 0.97327 0.82079 0.57523 ,\
  0.92063 0.97202 0.84991 0.60191 ,\
  0.93651 0.97064 0.87897 0.62949 ,\
  0.95238 0.96923 0.90799 0.65790 ,\
  0.96825 0.96788 0.93696 0.68703 ,\
  0.98413 0.96667 0.96591 0.71676 ,\
  1.0 0.9656629436911562 0.9948555925973216 0.7469125243616072)

# END