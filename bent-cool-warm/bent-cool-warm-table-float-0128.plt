
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
  0.00787 0.34038 0.29467 0.76168 ,\
  0.01575 0.34609 0.30616 0.76676 ,\
  0.02362 0.35193 0.31756 0.77176 ,\
  0.03150 0.35788 0.32887 0.77666 ,\
  0.03937 0.36396 0.34011 0.78148 ,\
  0.04724 0.37016 0.35128 0.78620 ,\
  0.05512 0.37648 0.36240 0.79084 ,\
  0.06299 0.38293 0.37346 0.79538 ,\
  0.07087 0.38951 0.38447 0.79984 ,\
  0.07874 0.39622 0.39544 0.80422 ,\
  0.08661 0.40305 0.40637 0.80851 ,\
  0.09449 0.41002 0.41726 0.81271 ,\
  0.10236 0.41711 0.42811 0.81684 ,\
  0.11024 0.42434 0.43893 0.82088 ,\
  0.11811 0.43170 0.44973 0.82484 ,\
  0.12598 0.43918 0.46049 0.82873 ,\
  0.13386 0.44680 0.47123 0.83253 ,\
  0.14173 0.45456 0.48195 0.83626 ,\
  0.14961 0.46244 0.49264 0.83992 ,\
  0.15748 0.47046 0.50331 0.84350 ,\
  0.16535 0.47862 0.51396 0.84701 ,\
  0.17323 0.48690 0.52459 0.85044 ,\
  0.18110 0.49533 0.53519 0.85381 ,\
  0.18898 0.50388 0.54579 0.85711 ,\
  0.19685 0.51257 0.55636 0.86034 ,\
  0.20472 0.52140 0.56691 0.86351 ,\
  0.21260 0.53036 0.57745 0.86661 ,\
  0.22047 0.53945 0.58797 0.86965 ,\
  0.22835 0.54868 0.59848 0.87263 ,\
  0.23622 0.55805 0.60897 0.87554 ,\
  0.24409 0.56755 0.61944 0.87840 ,\
  0.25197 0.57719 0.62990 0.88120 ,\
  0.25984 0.58696 0.64034 0.88395 ,\
  0.26772 0.59687 0.65076 0.88664 ,\
  0.27559 0.60691 0.66117 0.88929 ,\
  0.28346 0.61709 0.67156 0.89188 ,\
  0.29134 0.62741 0.68194 0.89442 ,\
  0.29921 0.63786 0.69230 0.89691 ,\
  0.30709 0.64844 0.70264 0.89936 ,\
  0.31496 0.65916 0.71297 0.90176 ,\
  0.32283 0.67002 0.72328 0.90413 ,\
  0.33071 0.68102 0.73357 0.90645 ,\
  0.33858 0.69214 0.74384 0.90873 ,\
  0.34646 0.70341 0.75410 0.91097 ,\
  0.35433 0.71481 0.76434 0.91318 ,\
  0.36220 0.72634 0.77456 0.91536 ,\
  0.37008 0.73802 0.78476 0.91750 ,\
  0.37795 0.74982 0.79494 0.91962 ,\
  0.38583 0.76176 0.80510 0.92170 ,\
  0.39370 0.77384 0.81525 0.92376 ,\
  0.40157 0.78605 0.82537 0.92579 ,\
  0.40945 0.79840 0.83547 0.92781 ,\
  0.41732 0.81088 0.84555 0.92980 ,\
  0.42520 0.82349 0.85561 0.93177 ,\
  0.43307 0.83625 0.86564 0.93372 ,\
  0.44094 0.84913 0.87566 0.93566 ,\
  0.44882 0.86215 0.88565 0.93759 ,\
  0.45669 0.87530 0.89561 0.93951 ,\
  0.46457 0.88859 0.90556 0.94141 ,\
  0.47244 0.90201 0.91548 0.94331 ,\
  0.48031 0.91556 0.92537 0.94521 ,\
  0.48819 0.92925 0.93524 0.94710 ,\
  0.49606 0.94307 0.94508 0.94899 ,\
  0.50394 0.94834 0.94411 0.94121 ,\
  0.51181 0.94495 0.93232 0.92384 ,\
  0.51969 0.94159 0.92051 0.90660 ,\
  0.52756 0.93824 0.90868 0.88949 ,\
  0.53543 0.93490 0.89684 0.87252 ,\
  0.54331 0.93156 0.88498 0.85568 ,\
  0.55118 0.92823 0.87310 0.83897 ,\
  0.55906 0.92491 0.86121 0.82241 ,\
  0.56693 0.92158 0.84929 0.80598 ,\
  0.57480 0.91826 0.83736 0.78969 ,\
  0.58268 0.91493 0.82541 0.77354 ,\
  0.59055 0.91159 0.81344 0.75754 ,\
  0.59843 0.90824 0.80145 0.74168 ,\
  0.60630 0.90488 0.78945 0.72597 ,\
  0.61417 0.90151 0.77742 0.71040 ,\
  0.62205 0.89813 0.76537 0.69499 ,\
  0.62992 0.89473 0.75330 0.67972 ,\
  0.63780 0.89131 0.74121 0.66460 ,\
  0.64567 0.88787 0.72909 0.64964 ,\
  0.65354 0.88441 0.71695 0.63483 ,\
  0.66142 0.88093 0.70479 0.62017 ,\
  0.66929 0.87742 0.69260 0.60568 ,\
  0.67717 0.87389 0.68039 0.59133 ,\
  0.68504 0.87033 0.66814 0.57715 ,\
  0.69291 0.86674 0.65587 0.56313 ,\
  0.70079 0.86312 0.64357 0.54927 ,\
  0.70866 0.85947 0.63123 0.53557 ,\
  0.71654 0.85578 0.61886 0.52203 ,\
  0.72441 0.85207 0.60645 0.50866 ,\
  0.73228 0.84832 0.59400 0.49546 ,\
  0.74016 0.84453 0.58151 0.48242 ,\
  0.74803 0.84071 0.56897 0.46955 ,\
  0.75591 0.83685 0.55639 0.45685 ,\
  0.76378 0.83295 0.54375 0.44432 ,\
  0.77165 0.82901 0.53106 0.43196 ,\
  0.77953 0.82503 0.51830 0.41977 ,\
  0.78740 0.82101 0.50548 0.40776 ,\
  0.79528 0.81695 0.49259 0.39593 ,\
  0.80315 0.81284 0.47963 0.38427 ,\
  0.81102 0.80870 0.46657 0.37279 ,\
  0.81890 0.80451 0.45343 0.36148 ,\
  0.82677 0.80027 0.44018 0.35036 ,\
  0.83465 0.79599 0.42682 0.33942 ,\
  0.84252 0.79166 0.41333 0.32866 ,\
  0.85039 0.78728 0.39971 0.31809 ,\
  0.85827 0.78286 0.38593 0.30771 ,\
  0.86614 0.77839 0.37199 0.29751 ,\
  0.87402 0.77388 0.35784 0.28750 ,\
  0.88189 0.76931 0.34348 0.27768 ,\
  0.88976 0.76469 0.32888 0.26805 ,\
  0.89764 0.76003 0.31398 0.25862 ,\
  0.90551 0.75531 0.29876 0.24938 ,\
  0.91339 0.75055 0.28315 0.24035 ,\
  0.92126 0.74573 0.26709 0.23151 ,\
  0.92913 0.74086 0.25048 0.22287 ,\
  0.93701 0.73593 0.23322 0.21444 ,\
  0.94488 0.73096 0.21515 0.20621 ,\
  0.95276 0.72593 0.19604 0.19819 ,\
  0.96063 0.72085 0.17558 0.19038 ,\
  0.96850 0.71571 0.15326 0.18279 ,\
  0.97638 0.71052 0.12821 0.17541 ,\
  0.98425 0.70528 0.09870 0.16824 ,\
  0.99213 0.69998 0.06012 0.16130 ,\
  1.0 0.694625624821 0.00296461045768 0.154581828278)

# END