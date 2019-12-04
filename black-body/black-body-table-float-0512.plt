
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
  0.00196 0.00624 0.00188 0.00105 ,\
  0.00391 0.01247 0.00376 0.00210 ,\
  0.00587 0.01871 0.00564 0.00315 ,\
  0.00783 0.02495 0.00752 0.00421 ,\
  0.00978 0.03119 0.00940 0.00526 ,\
  0.01174 0.03742 0.01128 0.00631 ,\
  0.01370 0.04354 0.01316 0.00736 ,\
  0.01566 0.04917 0.01504 0.00841 ,\
  0.01761 0.05441 0.01692 0.00946 ,\
  0.01957 0.05932 0.01880 0.01052 ,\
  0.02153 0.06395 0.02068 0.01157 ,\
  0.02348 0.06835 0.02256 0.01262 ,\
  0.02544 0.07253 0.02444 0.01367 ,\
  0.02740 0.07653 0.02632 0.01472 ,\
  0.02935 0.08036 0.02820 0.01577 ,\
  0.03131 0.08405 0.03008 0.01682 ,\
  0.03327 0.08761 0.03196 0.01788 ,\
  0.03523 0.09105 0.03384 0.01893 ,\
  0.03718 0.09438 0.03572 0.01998 ,\
  0.03914 0.09760 0.03760 0.02103 ,\
  0.04110 0.10074 0.03948 0.02208 ,\
  0.04305 0.10379 0.04134 0.02313 ,\
  0.04501 0.10675 0.04314 0.02418 ,\
  0.04697 0.10965 0.04489 0.02524 ,\
  0.04892 0.11247 0.04661 0.02629 ,\
  0.05088 0.11523 0.04828 0.02734 ,\
  0.05284 0.11793 0.04992 0.02839 ,\
  0.05479 0.12057 0.05152 0.02944 ,\
  0.05675 0.12316 0.05309 0.03049 ,\
  0.05871 0.12569 0.05463 0.03155 ,\
  0.06067 0.12818 0.05613 0.03260 ,\
  0.06262 0.13070 0.05756 0.03365 ,\
  0.06458 0.13326 0.05891 0.03471 ,\
  0.06654 0.13587 0.06018 0.03578 ,\
  0.06849 0.13852 0.06137 0.03686 ,\
  0.07045 0.14121 0.06248 0.03793 ,\
  0.07241 0.14395 0.06352 0.03902 ,\
  0.07436 0.14672 0.06449 0.04011 ,\
  0.07632 0.14953 0.06539 0.04119 ,\
  0.07828 0.15237 0.06622 0.04226 ,\
  0.08023 0.15525 0.06698 0.04331 ,\
  0.08219 0.15815 0.06772 0.04435 ,\
  0.08415 0.16106 0.06845 0.04537 ,\
  0.08611 0.16397 0.06918 0.04637 ,\
  0.08806 0.16689 0.06990 0.04735 ,\
  0.09002 0.16982 0.07062 0.04832 ,\
  0.09198 0.17276 0.07134 0.04927 ,\
  0.09393 0.17571 0.07205 0.05021 ,\
  0.09589 0.17866 0.07275 0.05113 ,\
  0.09785 0.18163 0.07345 0.05203 ,\
  0.09980 0.18460 0.07415 0.05293 ,\
  0.10176 0.18758 0.07484 0.05380 ,\
  0.10372 0.19056 0.07553 0.05467 ,\
  0.10568 0.19355 0.07622 0.05552 ,\
  0.10763 0.19655 0.07690 0.05636 ,\
  0.10959 0.19956 0.07757 0.05718 ,\
  0.11155 0.20258 0.07825 0.05799 ,\
  0.11350 0.20560 0.07891 0.05880 ,\
  0.11546 0.20863 0.07958 0.05959 ,\
  0.11742 0.21166 0.08024 0.06037 ,\
  0.11937 0.21470 0.08089 0.06114 ,\
  0.12133 0.21775 0.08154 0.06189 ,\
  0.12329 0.22081 0.08219 0.06264 ,\
  0.12524 0.22387 0.08283 0.06338 ,\
  0.12720 0.22694 0.08347 0.06411 ,\
  0.12916 0.23001 0.08410 0.06483 ,\
  0.13112 0.23310 0.08473 0.06554 ,\
  0.13307 0.23618 0.08536 0.06624 ,\
  0.13503 0.23928 0.08598 0.06693 ,\
  0.13699 0.24238 0.08659 0.06761 ,\
  0.13894 0.24549 0.08721 0.06828 ,\
  0.14090 0.24860 0.08782 0.06895 ,\
  0.14286 0.25172 0.08842 0.06960 ,\
  0.14481 0.25485 0.08902 0.07025 ,\
  0.14677 0.25798 0.08962 0.07089 ,\
  0.14873 0.26112 0.09021 0.07153 ,\
  0.15068 0.26426 0.09080 0.07215 ,\
  0.15264 0.26741 0.09138 0.07277 ,\
  0.15460 0.27056 0.09196 0.07338 ,\
  0.15656 0.27373 0.09254 0.07398 ,\
  0.15851 0.27689 0.09311 0.07458 ,\
  0.16047 0.28007 0.09368 0.07516 ,\
  0.16243 0.28324 0.09424 0.07575 ,\
  0.16438 0.28643 0.09480 0.07632 ,\
  0.16634 0.28962 0.09535 0.07689 ,\
  0.16830 0.29281 0.09590 0.07745 ,\
  0.17025 0.29601 0.09645 0.07800 ,\
  0.17221 0.29922 0.09699 0.07855 ,\
  0.17417 0.30243 0.09753 0.07909 ,\
  0.17613 0.30565 0.09807 0.07963 ,\
  0.17808 0.30887 0.09859 0.08015 ,\
  0.18004 0.31210 0.09912 0.08068 ,\
  0.18200 0.31534 0.09964 0.08119 ,\
  0.18395 0.31857 0.10016 0.08171 ,\
  0.18591 0.32182 0.10067 0.08223 ,\
  0.18787 0.32506 0.10118 0.08274 ,\
  0.18982 0.32832 0.10169 0.08326 ,\
  0.19178 0.33158 0.10219 0.08378 ,\
  0.19374 0.33484 0.10269 0.08430 ,\
  0.19569 0.33810 0.10318 0.08481 ,\
  0.19765 0.34138 0.10367 0.08533 ,\
  0.19961 0.34465 0.10416 0.08585 ,\
  0.20157 0.34793 0.10464 0.08637 ,\
  0.20352 0.35122 0.10511 0.08689 ,\
  0.20548 0.35451 0.10559 0.08740 ,\
  0.20744 0.35780 0.10605 0.08792 ,\
  0.20939 0.36110 0.10652 0.08844 ,\
  0.21135 0.36441 0.10698 0.08896 ,\
  0.21331 0.36772 0.10744 0.08948 ,\
  0.21526 0.37103 0.10789 0.09000 ,\
  0.21722 0.37435 0.10834 0.09052 ,\
  0.21918 0.37767 0.10878 0.09104 ,\
  0.22114 0.38100 0.10922 0.09156 ,\
  0.22309 0.38433 0.10966 0.09208 ,\
  0.22505 0.38767 0.11009 0.09260 ,\
  0.22701 0.39101 0.11052 0.09312 ,\
  0.22896 0.39435 0.11094 0.09364 ,\
  0.23092 0.39770 0.11136 0.09416 ,\
  0.23288 0.40105 0.11177 0.09468 ,\
  0.23483 0.40441 0.11218 0.09520 ,\
  0.23679 0.40777 0.11259 0.09572 ,\
  0.23875 0.41114 0.11299 0.09624 ,\
  0.24070 0.41451 0.11339 0.09677 ,\
  0.24266 0.41789 0.11378 0.09729 ,\
  0.24462 0.42127 0.11417 0.09781 ,\
  0.24658 0.42465 0.11456 0.09833 ,\
  0.24853 0.42804 0.11494 0.09885 ,\
  0.25049 0.43144 0.11532 0.09938 ,\
  0.25245 0.43483 0.11569 0.09990 ,\
  0.25440 0.43824 0.11606 0.10042 ,\
  0.25636 0.44164 0.11642 0.10095 ,\
  0.25832 0.44505 0.11678 0.10147 ,\
  0.26027 0.44847 0.11713 0.10199 ,\
  0.26223 0.45189 0.11748 0.10252 ,\
  0.26419 0.45531 0.11783 0.10304 ,\
  0.26614 0.45874 0.11817 0.10357 ,\
  0.26810 0.46217 0.11851 0.10409 ,\
  0.27006 0.46560 0.11884 0.10461 ,\
  0.27202 0.46904 0.11917 0.10514 ,\
  0.27397 0.47249 0.11949 0.10566 ,\
  0.27593 0.47594 0.11981 0.10619 ,\
  0.27789 0.47939 0.12013 0.10672 ,\
  0.27984 0.48284 0.12044 0.10724 ,\
  0.28180 0.48630 0.12075 0.10777 ,\
  0.28376 0.48977 0.12105 0.10829 ,\
  0.28571 0.49324 0.12134 0.10882 ,\
  0.28767 0.49671 0.12164 0.10934 ,\
  0.28963 0.50019 0.12192 0.10987 ,\
  0.29159 0.50367 0.12221 0.11040 ,\
  0.29354 0.50715 0.12249 0.11093 ,\
  0.29550 0.51064 0.12276 0.11145 ,\
  0.29746 0.51414 0.12303 0.11198 ,\
  0.29941 0.51763 0.12329 0.11251 ,\
  0.30137 0.52113 0.12355 0.11303 ,\
  0.30333 0.52464 0.12381 0.11356 ,\
  0.30528 0.52815 0.12406 0.11409 ,\
  0.30724 0.53166 0.12431 0.11462 ,\
  0.30920 0.53518 0.12455 0.11515 ,\
  0.31115 0.53870 0.12478 0.11568 ,\
  0.31311 0.54222 0.12502 0.11621 ,\
  0.31507 0.54575 0.12524 0.11673 ,\
  0.31703 0.54928 0.12546 0.11726 ,\
  0.31898 0.55282 0.12568 0.11779 ,\
  0.32094 0.55636 0.12589 0.11832 ,\
  0.32290 0.55990 0.12610 0.11885 ,\
  0.32485 0.56345 0.12630 0.11938 ,\
  0.32681 0.56700 0.12650 0.11991 ,\
  0.32877 0.57056 0.12669 0.12044 ,\
  0.33072 0.57412 0.12688 0.12098 ,\
  0.33268 0.57768 0.12706 0.12151 ,\
  0.33464 0.58125 0.12724 0.12204 ,\
  0.33659 0.58482 0.12741 0.12257 ,\
  0.33855 0.58839 0.12758 0.12310 ,\
  0.34051 0.59197 0.12774 0.12363 ,\
  0.34247 0.59555 0.12790 0.12416 ,\
  0.34442 0.59914 0.12805 0.12470 ,\
  0.34638 0.60273 0.12820 0.12523 ,\
  0.34834 0.60632 0.12834 0.12576 ,\
  0.35029 0.60992 0.12847 0.12629 ,\
  0.35225 0.61352 0.12860 0.12683 ,\
  0.35421 0.61712 0.12873 0.12736 ,\
  0.35616 0.62073 0.12885 0.12789 ,\
  0.35812 0.62434 0.12896 0.12843 ,\
  0.36008 0.62796 0.12907 0.12896 ,\
  0.36204 0.63158 0.12918 0.12949 ,\
  0.36399 0.63520 0.12927 0.13003 ,\
  0.36595 0.63882 0.12937 0.13056 ,\
  0.36791 0.64245 0.12945 0.13110 ,\
  0.36986 0.64609 0.12954 0.13163 ,\
  0.37182 0.64972 0.12961 0.13217 ,\
  0.37378 0.65336 0.12968 0.13270 ,\
  0.37573 0.65701 0.12975 0.13324 ,\
  0.37769 0.66066 0.12981 0.13377 ,\
  0.37965 0.66431 0.12986 0.13431 ,\
  0.38160 0.66796 0.12991 0.13485 ,\
  0.38356 0.67162 0.12995 0.13538 ,\
  0.38552 0.67528 0.12998 0.13592 ,\
  0.38748 0.67895 0.13001 0.13645 ,\
  0.38943 0.68262 0.13004 0.13699 ,\
  0.39139 0.68608 0.13051 0.13742 ,\
  0.39335 0.68796 0.13445 0.13701 ,\
  0.39530 0.68983 0.13832 0.13659 ,\
  0.39726 0.69171 0.14213 0.13616 ,\
  0.39922 0.69358 0.14588 0.13573 ,\
  0.40117 0.69546 0.14958 0.13529 ,\
  0.40313 0.69733 0.15321 0.13484 ,\
  0.40509 0.69920 0.15680 0.13438 ,\
  0.40705 0.70108 0.16035 0.13392 ,\
  0.40900 0.70295 0.16385 0.13345 ,\
  0.41096 0.70482 0.16730 0.13297 ,\
  0.41292 0.70669 0.17072 0.13248 ,\
  0.41487 0.70856 0.17410 0.13198 ,\
  0.41683 0.71044 0.17745 0.13148 ,\
  0.41879 0.71231 0.18077 0.13097 ,\
  0.42074 0.71418 0.18405 0.13045 ,\
  0.42270 0.71605 0.18730 0.12992 ,\
  0.42466 0.71792 0.19053 0.12938 ,\
  0.42661 0.71979 0.19372 0.12883 ,\
  0.42857 0.72165 0.19689 0.12827 ,\
  0.43053 0.72352 0.20004 0.12771 ,\
  0.43249 0.72539 0.20317 0.12713 ,\
  0.43444 0.72726 0.20627 0.12655 ,\
  0.43640 0.72913 0.20935 0.12596 ,\
  0.43836 0.73099 0.21241 0.12535 ,\
  0.44031 0.73286 0.21545 0.12474 ,\
  0.44227 0.73473 0.21847 0.12411 ,\
  0.44423 0.73659 0.22147 0.12348 ,\
  0.44618 0.73846 0.22445 0.12284 ,\
  0.44814 0.74032 0.22742 0.12218 ,\
  0.45010 0.74219 0.23037 0.12151 ,\
  0.45205 0.74405 0.23331 0.12084 ,\
  0.45401 0.74592 0.23623 0.12015 ,\
  0.45597 0.74778 0.23914 0.11945 ,\
  0.45793 0.74965 0.24204 0.11874 ,\
  0.45988 0.75151 0.24492 0.11802 ,\
  0.46184 0.75337 0.24778 0.11728 ,\
  0.46380 0.75523 0.25064 0.11653 ,\
  0.46575 0.75710 0.25348 0.11577 ,\
  0.46771 0.75896 0.25632 0.11500 ,\
  0.46967 0.76082 0.25914 0.11421 ,\
  0.47162 0.76268 0.26195 0.11342 ,\
  0.47358 0.76454 0.26475 0.11260 ,\
  0.47554 0.76640 0.26754 0.11178 ,\
  0.47750 0.76827 0.27032 0.11093 ,\
  0.47945 0.77013 0.27309 0.11008 ,\
  0.48141 0.77199 0.27585 0.10921 ,\
  0.48337 0.77385 0.27861 0.10832 ,\
  0.48532 0.77570 0.28135 0.10742 ,\
  0.48728 0.77756 0.28409 0.10650 ,\
  0.48924 0.77942 0.28682 0.10557 ,\
  0.49119 0.78128 0.28954 0.10462 ,\
  0.49315 0.78314 0.29225 0.10365 ,\
  0.49511 0.78500 0.29496 0.10266 ,\
  0.49706 0.78685 0.29766 0.10166 ,\
  0.49902 0.78871 0.30035 0.10063 ,\
  0.50098 0.79057 0.30304 0.09959 ,\
  0.50294 0.79243 0.30572 0.09853 ,\
  0.50489 0.79428 0.30839 0.09744 ,\
  0.50685 0.79614 0.31106 0.09634 ,\
  0.50881 0.79799 0.31372 0.09521 ,\
  0.51076 0.79985 0.31637 0.09407 ,\
  0.51272 0.80171 0.31902 0.09289 ,\
  0.51468 0.80356 0.32167 0.09170 ,\
  0.51663 0.80541 0.32431 0.09048 ,\
  0.51859 0.80727 0.32694 0.08923 ,\
  0.52055 0.80912 0.32957 0.08796 ,\
  0.52250 0.81098 0.33220 0.08666 ,\
  0.52446 0.81283 0.33482 0.08533 ,\
  0.52642 0.81468 0.33743 0.08397 ,\
  0.52838 0.81654 0.34004 0.08258 ,\
  0.53033 0.81839 0.34265 0.08116 ,\
  0.53229 0.82024 0.34525 0.07971 ,\
  0.53425 0.82210 0.34785 0.07822 ,\
  0.53620 0.82395 0.35045 0.07669 ,\
  0.53816 0.82580 0.35304 0.07513 ,\
  0.54012 0.82765 0.35563 0.07352 ,\
  0.54207 0.82950 0.35821 0.07187 ,\
  0.54403 0.83135 0.36079 0.07018 ,\
  0.54599 0.83320 0.36337 0.06844 ,\
  0.54795 0.83506 0.36594 0.06665 ,\
  0.54990 0.83691 0.36851 0.06480 ,\
  0.55186 0.83876 0.37108 0.06291 ,\
  0.55382 0.84061 0.37365 0.06095 ,\
  0.55577 0.84246 0.37621 0.05892 ,\
  0.55773 0.84430 0.37877 0.05683 ,\
  0.55969 0.84615 0.38132 0.05467 ,\
  0.56164 0.84800 0.38388 0.05242 ,\
  0.56360 0.84985 0.38643 0.05009 ,\
  0.56556 0.85170 0.38898 0.04766 ,\
  0.56751 0.85355 0.39152 0.04514 ,\
  0.56947 0.85540 0.39406 0.04249 ,\
  0.57143 0.85724 0.39660 0.03972 ,\
  0.57339 0.85909 0.39914 0.03685 ,\
  0.57534 0.86094 0.40168 0.03396 ,\
  0.57730 0.86279 0.40421 0.03106 ,\
  0.57926 0.86463 0.40675 0.02812 ,\
  0.58121 0.86648 0.40928 0.02517 ,\
  0.58317 0.86833 0.41180 0.02219 ,\
  0.58513 0.86982 0.41461 0.01994 ,\
  0.58708 0.87032 0.41817 0.01974 ,\
  0.58904 0.87083 0.42172 0.01954 ,\
  0.59100 0.87133 0.42525 0.01934 ,\
  0.59295 0.87182 0.42878 0.01915 ,\
  0.59491 0.87232 0.43229 0.01895 ,\
  0.59687 0.87280 0.43578 0.01876 ,\
  0.59883 0.87329 0.43927 0.01858 ,\
  0.60078 0.87376 0.44274 0.01839 ,\
  0.60274 0.87424 0.44621 0.01821 ,\
  0.60470 0.87471 0.44966 0.01803 ,\
  0.60665 0.87518 0.45310 0.01785 ,\
  0.60861 0.87564 0.45653 0.01768 ,\
  0.61057 0.87609 0.45995 0.01751 ,\
  0.61252 0.87655 0.46336 0.01734 ,\
  0.61448 0.87700 0.46676 0.01717 ,\
  0.61644 0.87744 0.47015 0.01701 ,\
  0.61840 0.87788 0.47354 0.01685 ,\
  0.62035 0.87832 0.47691 0.01669 ,\
  0.62231 0.87875 0.48027 0.01654 ,\
  0.62427 0.87917 0.48363 0.01639 ,\
  0.62622 0.87960 0.48698 0.01624 ,\
  0.62818 0.88001 0.49032 0.01609 ,\
  0.63014 0.88043 0.49365 0.01595 ,\
  0.63209 0.88084 0.49697 0.01581 ,\
  0.63405 0.88124 0.50029 0.01568 ,\
  0.63601 0.88164 0.50360 0.01554 ,\
  0.63796 0.88204 0.50690 0.01541 ,\
  0.63992 0.88243 0.51020 0.01529 ,\
  0.64188 0.88282 0.51348 0.01516 ,\
  0.64384 0.88320 0.51676 0.01504 ,\
  0.64579 0.88358 0.52004 0.01493 ,\
  0.64775 0.88395 0.52331 0.01481 ,\
  0.64971 0.88432 0.52657 0.01470 ,\
  0.65166 0.88468 0.52983 0.01459 ,\
  0.65362 0.88504 0.53308 0.01449 ,\
  0.65558 0.88540 0.53632 0.01439 ,\
  0.65753 0.88575 0.53956 0.01429 ,\
  0.65949 0.88610 0.54279 0.01420 ,\
  0.66145 0.88644 0.54602 0.01411 ,\
  0.66341 0.88677 0.54924 0.01402 ,\
  0.66536 0.88711 0.55246 0.01394 ,\
  0.66732 0.88743 0.55567 0.01386 ,\
  0.66928 0.88776 0.55887 0.01378 ,\
  0.67123 0.88808 0.56207 0.01371 ,\
  0.67319 0.88839 0.56527 0.01364 ,\
  0.67515 0.88870 0.56846 0.01357 ,\
  0.67710 0.88900 0.57165 0.01351 ,\
  0.67906 0.88930 0.57483 0.01345 ,\
  0.68102 0.88960 0.57801 0.01340 ,\
  0.68297 0.88989 0.58119 0.01335 ,\
  0.68493 0.89018 0.58436 0.01330 ,\
  0.68689 0.89046 0.58752 0.01325 ,\
  0.68885 0.89073 0.59068 0.01321 ,\
  0.69080 0.89100 0.59384 0.01318 ,\
  0.69276 0.89127 0.59699 0.01315 ,\
  0.69472 0.89153 0.60014 0.01312 ,\
  0.69667 0.89179 0.60329 0.01309 ,\
  0.69863 0.89204 0.60643 0.01307 ,\
  0.70059 0.89229 0.60957 0.01306 ,\
  0.70254 0.89253 0.61271 0.01304 ,\
  0.70450 0.89277 0.61584 0.01304 ,\
  0.70646 0.89300 0.61897 0.01303 ,\
  0.70841 0.89323 0.62209 0.01303 ,\
  0.71037 0.89345 0.62522 0.01304 ,\
  0.71233 0.89367 0.62834 0.01304 ,\
  0.71429 0.89389 0.63145 0.01306 ,\
  0.71624 0.89410 0.63456 0.01307 ,\
  0.71820 0.89430 0.63767 0.01309 ,\
  0.72016 0.89450 0.64078 0.01312 ,\
  0.72211 0.89469 0.64389 0.01314 ,\
  0.72407 0.89488 0.64699 0.01318 ,\
  0.72603 0.89506 0.65009 0.01321 ,\
  0.72798 0.89524 0.65318 0.01326 ,\
  0.72994 0.89542 0.65627 0.01330 ,\
  0.73190 0.89558 0.65937 0.01335 ,\
  0.73386 0.89575 0.66245 0.01341 ,\
  0.73581 0.89591 0.66554 0.01347 ,\
  0.73777 0.89606 0.66862 0.01353 ,\
  0.73973 0.89621 0.67170 0.01360 ,\
  0.74168 0.89635 0.67478 0.01367 ,\
  0.74364 0.89649 0.67786 0.01375 ,\
  0.74560 0.89662 0.68093 0.01383 ,\
  0.74755 0.89675 0.68401 0.01392 ,\
  0.74951 0.89687 0.68708 0.01401 ,\
  0.75147 0.89699 0.69014 0.01410 ,\
  0.75342 0.89710 0.69321 0.01420 ,\
  0.75538 0.89721 0.69627 0.01431 ,\
  0.75734 0.89731 0.69933 0.01442 ,\
  0.75930 0.89741 0.70239 0.01453 ,\
  0.76125 0.89750 0.70545 0.01465 ,\
  0.76321 0.89759 0.70851 0.01477 ,\
  0.76517 0.89767 0.71156 0.01490 ,\
  0.76712 0.89774 0.71462 0.01503 ,\
  0.76908 0.89782 0.71767 0.01517 ,\
  0.77104 0.89788 0.72072 0.01531 ,\
  0.77299 0.89794 0.72376 0.01546 ,\
  0.77495 0.89799 0.72681 0.01562 ,\
  0.77691 0.89804 0.72985 0.01577 ,\
  0.77886 0.89809 0.73290 0.01594 ,\
  0.78082 0.89812 0.73594 0.01610 ,\
  0.78278 0.89816 0.73898 0.01628 ,\
  0.78474 0.89818 0.74202 0.01645 ,\
  0.78669 0.89821 0.74505 0.01664 ,\
  0.78865 0.89822 0.74809 0.01683 ,\
  0.79061 0.89823 0.75112 0.01702 ,\
  0.79256 0.89824 0.75416 0.01722 ,\
  0.79452 0.89824 0.75719 0.01742 ,\
  0.79648 0.89823 0.76022 0.01763 ,\
  0.79843 0.89822 0.76325 0.01784 ,\
  0.80039 0.89820 0.76627 0.01806 ,\
  0.80235 0.89818 0.76930 0.01829 ,\
  0.80431 0.89815 0.77233 0.01852 ,\
  0.80626 0.89812 0.77535 0.01875 ,\
  0.80822 0.89808 0.77837 0.01899 ,\
  0.81018 0.89804 0.78140 0.01924 ,\
  0.81213 0.89798 0.78442 0.01949 ,\
  0.81409 0.89793 0.78744 0.01975 ,\
  0.81605 0.89787 0.79046 0.02001 ,\
  0.81800 0.89780 0.79347 0.02028 ,\
  0.81996 0.89772 0.79649 0.02055 ,\
  0.82192 0.89764 0.79951 0.02083 ,\
  0.82387 0.89756 0.80252 0.02112 ,\
  0.82583 0.89747 0.80554 0.02141 ,\
  0.82779 0.89737 0.80855 0.02170 ,\
  0.82975 0.89727 0.81156 0.02200 ,\
  0.83170 0.89716 0.81457 0.02231 ,\
  0.83366 0.89704 0.81758 0.02262 ,\
  0.83562 0.89692 0.82059 0.02294 ,\
  0.83757 0.89680 0.82360 0.02327 ,\
  0.83953 0.89666 0.82661 0.02360 ,\
  0.84149 0.89671 0.82954 0.02811 ,\
  0.84344 0.89890 0.83155 0.07412 ,\
  0.84540 0.90107 0.83356 0.10551 ,\
  0.84736 0.90322 0.83556 0.13077 ,\
  0.84932 0.90535 0.83758 0.15259 ,\
  0.85127 0.90747 0.83959 0.17217 ,\
  0.85323 0.90956 0.84161 0.19015 ,\
  0.85519 0.91164 0.84363 0.20692 ,\
  0.85714 0.91370 0.84565 0.22277 ,\
  0.85910 0.91574 0.84767 0.23785 ,\
  0.86106 0.91775 0.84970 0.25232 ,\
  0.86301 0.91975 0.85172 0.26628 ,\
  0.86497 0.92173 0.85375 0.27980 ,\
  0.86693 0.92369 0.85579 0.29294 ,\
  0.86888 0.92563 0.85782 0.30575 ,\
  0.87084 0.92755 0.85986 0.31829 ,\
  0.87280 0.92944 0.86190 0.33057 ,\
  0.87476 0.93132 0.86394 0.34263 ,\
  0.87671 0.93318 0.86599 0.35450 ,\
  0.87867 0.93501 0.86803 0.36619 ,\
  0.88063 0.93682 0.87008 0.37772 ,\
  0.88258 0.93861 0.87214 0.38911 ,\
  0.88454 0.94038 0.87419 0.40037 ,\
  0.88650 0.94213 0.87625 0.41152 ,\
  0.88845 0.94386 0.87831 0.42256 ,\
  0.89041 0.94556 0.88037 0.43351 ,\
  0.89237 0.94724 0.88243 0.44436 ,\
  0.89432 0.94890 0.88450 0.45514 ,\
  0.89628 0.95054 0.88657 0.46584 ,\
  0.89824 0.95215 0.88864 0.47648 ,\
  0.90020 0.95374 0.89072 0.48705 ,\
  0.90215 0.95531 0.89279 0.49757 ,\
  0.90411 0.95685 0.89487 0.50804 ,\
  0.90607 0.95837 0.89695 0.51845 ,\
  0.90802 0.95987 0.89904 0.52883 ,\
  0.90998 0.96134 0.90113 0.53916 ,\
  0.91194 0.96279 0.90322 0.54946 ,\
  0.91389 0.96422 0.90531 0.55972 ,\
  0.91585 0.96562 0.90740 0.56995 ,\
  0.91781 0.96699 0.90950 0.58015 ,\
  0.91977 0.96834 0.91160 0.59032 ,\
  0.92172 0.96967 0.91370 0.60047 ,\
  0.92368 0.97097 0.91581 0.61060 ,\
  0.92564 0.97224 0.91792 0.62070 ,\
  0.92759 0.97349 0.92003 0.63079 ,\
  0.92955 0.97472 0.92214 0.64086 ,\
  0.93151 0.97592 0.92426 0.65092 ,\
  0.93346 0.97709 0.92638 0.66096 ,\
  0.93542 0.97823 0.92850 0.67098 ,\
  0.93738 0.97935 0.93062 0.68100 ,\
  0.93933 0.98045 0.93275 0.69100 ,\
  0.94129 0.98151 0.93488 0.70100 ,\
  0.94325 0.98255 0.93701 0.71099 ,\
  0.94521 0.98356 0.93914 0.72097 ,\
  0.94716 0.98455 0.94128 0.73094 ,\
  0.94912 0.98551 0.94342 0.74091 ,\
  0.95108 0.98644 0.94556 0.75087 ,\
  0.95303 0.98734 0.94771 0.76083 ,\
  0.95499 0.98821 0.94985 0.77078 ,\
  0.95695 0.98906 0.95200 0.78073 ,\
  0.95890 0.98987 0.95416 0.79068 ,\
  0.96086 0.99066 0.95631 0.80063 ,\
  0.96282 0.99142 0.95847 0.81058 ,\
  0.96477 0.99215 0.96063 0.82053 ,\
  0.96673 0.99285 0.96280 0.83047 ,\
  0.96869 0.99352 0.96496 0.84042 ,\
  0.97065 0.99416 0.96713 0.85037 ,\
  0.97260 0.99477 0.96930 0.86032 ,\
  0.97456 0.99535 0.97148 0.87028 ,\
  0.97652 0.99590 0.97366 0.88023 ,\
  0.97847 0.99641 0.97584 0.89019 ,\
  0.98043 0.99690 0.97802 0.90015 ,\
  0.98239 0.99736 0.98020 0.91012 ,\
  0.98434 0.99778 0.98239 0.92008 ,\
  0.98630 0.99817 0.98458 0.93006 ,\
  0.98826 0.99853 0.98678 0.94003 ,\
  0.99022 0.99886 0.98897 0.95002 ,\
  0.99217 0.99916 0.99117 0.96000 ,\
  0.99413 0.99942 0.99337 0.96999 ,\
  0.99609 0.99965 0.99558 0.97999 ,\
  0.99804 0.99985 0.99779 0.98999 ,\
  1.0 1.0 1.0 1.0)

# END