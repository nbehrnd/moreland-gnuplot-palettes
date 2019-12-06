
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
  0.00196 0.28339 0.00000 0.33401 ,\
  0.00391 0.28442 0.00000 0.33702 ,\
  0.00587 0.28541 0.00000 0.34000 ,\
  0.00783 0.28640 0.00000 0.34298 ,\
  0.00978 0.28736 0.00000 0.34592 ,\
  0.01174 0.28832 0.00000 0.34887 ,\
  0.01370 0.28924 0.00012 0.35178 ,\
  0.01566 0.29016 0.00262 0.35469 ,\
  0.01761 0.29106 0.00522 0.35757 ,\
  0.01957 0.29194 0.00788 0.36045 ,\
  0.02153 0.29280 0.01064 0.36330 ,\
  0.02348 0.29365 0.01346 0.36614 ,\
  0.02544 0.29448 0.01638 0.36895 ,\
  0.02740 0.29529 0.01936 0.37176 ,\
  0.02935 0.29608 0.02246 0.37454 ,\
  0.03131 0.29686 0.02561 0.37732 ,\
  0.03327 0.29761 0.02888 0.38005 ,\
  0.03523 0.29836 0.03220 0.38279 ,\
  0.03718 0.29908 0.03565 0.38549 ,\
  0.03914 0.29979 0.03915 0.38819 ,\
  0.04110 0.30047 0.04270 0.39086 ,\
  0.04305 0.30114 0.04612 0.39352 ,\
  0.04501 0.30179 0.04949 0.39614 ,\
  0.04697 0.30243 0.05277 0.39876 ,\
  0.04892 0.30304 0.05602 0.40135 ,\
  0.05088 0.30364 0.05919 0.40393 ,\
  0.05284 0.30421 0.06233 0.40647 ,\
  0.05479 0.30478 0.06541 0.40901 ,\
  0.05675 0.30531 0.06847 0.41151 ,\
  0.05871 0.30584 0.07147 0.41401 ,\
  0.06067 0.30634 0.07446 0.41647 ,\
  0.06262 0.30683 0.07740 0.41893 ,\
  0.06458 0.30730 0.08034 0.42135 ,\
  0.06654 0.30775 0.08323 0.42376 ,\
  0.06849 0.30818 0.08611 0.42613 ,\
  0.07045 0.30859 0.08896 0.42850 ,\
  0.07241 0.30898 0.09180 0.43083 ,\
  0.07436 0.30936 0.09460 0.43315 ,\
  0.07632 0.30971 0.09741 0.43543 ,\
  0.07828 0.31006 0.10018 0.43771 ,\
  0.08023 0.31037 0.10296 0.43995 ,\
  0.08219 0.31068 0.10570 0.44218 ,\
  0.08415 0.31095 0.10845 0.44437 ,\
  0.08611 0.31122 0.11117 0.44655 ,\
  0.08806 0.31146 0.11389 0.44869 ,\
  0.09002 0.31169 0.11658 0.45083 ,\
  0.09198 0.31190 0.11928 0.45293 ,\
  0.09393 0.31209 0.12196 0.45502 ,\
  0.09589 0.31226 0.12464 0.45706 ,\
  0.09785 0.31241 0.12730 0.45911 ,\
  0.09980 0.31254 0.12996 0.46110 ,\
  0.10176 0.31266 0.13260 0.46310 ,\
  0.10372 0.31275 0.13525 0.46504 ,\
  0.10568 0.31283 0.13788 0.46699 ,\
  0.10763 0.31289 0.14051 0.46889 ,\
  0.10959 0.31294 0.14312 0.47078 ,\
  0.11155 0.31295 0.14574 0.47263 ,\
  0.11350 0.31296 0.14834 0.47448 ,\
  0.11546 0.31295 0.15094 0.47628 ,\
  0.11742 0.31292 0.15353 0.47807 ,\
  0.11937 0.31287 0.15612 0.47982 ,\
  0.12133 0.31281 0.15870 0.48157 ,\
  0.12329 0.31272 0.16128 0.48327 ,\
  0.12524 0.31262 0.16384 0.48497 ,\
  0.12720 0.31250 0.16641 0.48662 ,\
  0.12916 0.31237 0.16896 0.48826 ,\
  0.13112 0.31221 0.17152 0.48986 ,\
  0.13307 0.31204 0.17406 0.49146 ,\
  0.13503 0.31185 0.17661 0.49301 ,\
  0.13699 0.31165 0.17914 0.49456 ,\
  0.13894 0.31143 0.18167 0.49606 ,\
  0.14090 0.31119 0.18420 0.49756 ,\
  0.14286 0.31094 0.18672 0.49901 ,\
  0.14481 0.31067 0.18923 0.50046 ,\
  0.14677 0.31038 0.19174 0.50187 ,\
  0.14873 0.31008 0.19425 0.50327 ,\
  0.15068 0.30977 0.19675 0.50462 ,\
  0.15264 0.30944 0.19924 0.50597 ,\
  0.15460 0.30909 0.20173 0.50728 ,\
  0.15656 0.30873 0.20421 0.50859 ,\
  0.15851 0.30835 0.20669 0.50985 ,\
  0.16047 0.30796 0.20916 0.51111 ,\
  0.16243 0.30755 0.21163 0.51232 ,\
  0.16438 0.30713 0.21409 0.51353 ,\
  0.16634 0.30669 0.21655 0.51470 ,\
  0.16830 0.30625 0.21900 0.51586 ,\
  0.17025 0.30578 0.22144 0.51699 ,\
  0.17221 0.30531 0.22388 0.51811 ,\
  0.17417 0.30482 0.22632 0.51919 ,\
  0.17613 0.30432 0.22874 0.52026 ,\
  0.17808 0.30381 0.23117 0.52130 ,\
  0.18004 0.30328 0.23358 0.52233 ,\
  0.18200 0.30274 0.23599 0.52333 ,\
  0.18395 0.30219 0.23840 0.52431 ,\
  0.18591 0.30163 0.24080 0.52527 ,\
  0.18787 0.30106 0.24319 0.52621 ,\
  0.18982 0.30047 0.24558 0.52713 ,\
  0.19178 0.29988 0.24795 0.52803 ,\
  0.19374 0.29927 0.25033 0.52890 ,\
  0.19569 0.29866 0.25270 0.52977 ,\
  0.19765 0.29803 0.25506 0.53061 ,\
  0.19961 0.29739 0.25742 0.53143 ,\
  0.20157 0.29675 0.25977 0.53223 ,\
  0.20352 0.29609 0.26211 0.53302 ,\
  0.20548 0.29543 0.26445 0.53378 ,\
  0.20744 0.29476 0.26678 0.53453 ,\
  0.20939 0.29407 0.26910 0.53526 ,\
  0.21135 0.29338 0.27142 0.53597 ,\
  0.21331 0.29269 0.27374 0.53666 ,\
  0.21526 0.29198 0.27604 0.53735 ,\
  0.21722 0.29127 0.27834 0.53800 ,\
  0.21918 0.29055 0.28063 0.53865 ,\
  0.22114 0.28982 0.28292 0.53928 ,\
  0.22309 0.28909 0.28520 0.53990 ,\
  0.22505 0.28835 0.28748 0.54049 ,\
  0.22701 0.28760 0.28975 0.54108 ,\
  0.22896 0.28685 0.29201 0.54164 ,\
  0.23092 0.28609 0.29426 0.54220 ,\
  0.23288 0.28532 0.29651 0.54273 ,\
  0.23483 0.28455 0.29875 0.54326 ,\
  0.23679 0.28378 0.30099 0.54377 ,\
  0.23875 0.28300 0.30322 0.54427 ,\
  0.24070 0.28222 0.30544 0.54475 ,\
  0.24266 0.28143 0.30766 0.54523 ,\
  0.24462 0.28064 0.30987 0.54568 ,\
  0.24658 0.27984 0.31207 0.54613 ,\
  0.24853 0.27904 0.31427 0.54656 ,\
  0.25049 0.27823 0.31647 0.54699 ,\
  0.25245 0.27743 0.31865 0.54739 ,\
  0.25440 0.27662 0.32083 0.54780 ,\
  0.25636 0.27581 0.32300 0.54818 ,\
  0.25832 0.27499 0.32517 0.54856 ,\
  0.26027 0.27418 0.32733 0.54892 ,\
  0.26223 0.27335 0.32949 0.54928 ,\
  0.26419 0.27253 0.33164 0.54963 ,\
  0.26614 0.27171 0.33378 0.54996 ,\
  0.26810 0.27088 0.33592 0.55029 ,\
  0.27006 0.27005 0.33805 0.55061 ,\
  0.27202 0.26923 0.34018 0.55091 ,\
  0.27397 0.26839 0.34230 0.55121 ,\
  0.27593 0.26757 0.34441 0.55150 ,\
  0.27789 0.26673 0.34652 0.55178 ,\
  0.27984 0.26590 0.34862 0.55205 ,\
  0.28180 0.26506 0.35072 0.55232 ,\
  0.28376 0.26423 0.35281 0.55258 ,\
  0.28571 0.26340 0.35490 0.55283 ,\
  0.28767 0.26256 0.35698 0.55307 ,\
  0.28963 0.26173 0.35906 0.55330 ,\
  0.29159 0.26089 0.36113 0.55353 ,\
  0.29354 0.26006 0.36320 0.55375 ,\
  0.29550 0.25922 0.36526 0.55396 ,\
  0.29746 0.25839 0.36731 0.55417 ,\
  0.29941 0.25756 0.36936 0.55437 ,\
  0.30137 0.25672 0.37141 0.55457 ,\
  0.30333 0.25589 0.37345 0.55475 ,\
  0.30528 0.25506 0.37549 0.55494 ,\
  0.30724 0.25423 0.37752 0.55511 ,\
  0.30920 0.25339 0.37955 0.55528 ,\
  0.31115 0.25257 0.38157 0.55545 ,\
  0.31311 0.25173 0.38359 0.55561 ,\
  0.31507 0.25091 0.38560 0.55576 ,\
  0.31703 0.25008 0.38761 0.55591 ,\
  0.31898 0.24925 0.38961 0.55605 ,\
  0.32094 0.24842 0.39161 0.55619 ,\
  0.32290 0.24760 0.39361 0.55633 ,\
  0.32485 0.24678 0.39560 0.55646 ,\
  0.32681 0.24595 0.39759 0.55658 ,\
  0.32877 0.24513 0.39957 0.55671 ,\
  0.33072 0.24431 0.40155 0.55682 ,\
  0.33268 0.24349 0.40353 0.55693 ,\
  0.33464 0.24267 0.40551 0.55704 ,\
  0.33659 0.24185 0.40748 0.55715 ,\
  0.33855 0.24104 0.40944 0.55725 ,\
  0.34051 0.24022 0.41140 0.55734 ,\
  0.34247 0.23941 0.41336 0.55743 ,\
  0.34442 0.23859 0.41532 0.55752 ,\
  0.34638 0.23778 0.41727 0.55761 ,\
  0.34834 0.23696 0.41922 0.55769 ,\
  0.35029 0.23615 0.42117 0.55776 ,\
  0.35225 0.23534 0.42311 0.55784 ,\
  0.35421 0.23453 0.42505 0.55791 ,\
  0.35616 0.23371 0.42699 0.55797 ,\
  0.35812 0.23290 0.42892 0.55804 ,\
  0.36008 0.23209 0.43086 0.55809 ,\
  0.36204 0.23128 0.43279 0.55815 ,\
  0.36399 0.23047 0.43471 0.55820 ,\
  0.36595 0.22966 0.43664 0.55825 ,\
  0.36791 0.22885 0.43856 0.55829 ,\
  0.36986 0.22804 0.44048 0.55834 ,\
  0.37182 0.22723 0.44240 0.55837 ,\
  0.37378 0.22642 0.44431 0.55841 ,\
  0.37573 0.22561 0.44622 0.55844 ,\
  0.37769 0.22479 0.44813 0.55847 ,\
  0.37965 0.22398 0.45004 0.55849 ,\
  0.38160 0.22317 0.45195 0.55851 ,\
  0.38356 0.22235 0.45386 0.55853 ,\
  0.38552 0.22154 0.45576 0.55854 ,\
  0.38748 0.22072 0.45766 0.55855 ,\
  0.38943 0.21990 0.45956 0.55856 ,\
  0.39139 0.21908 0.46146 0.55856 ,\
  0.39335 0.21826 0.46335 0.55856 ,\
  0.39530 0.21743 0.46525 0.55855 ,\
  0.39726 0.21661 0.46714 0.55854 ,\
  0.39922 0.21578 0.46904 0.55853 ,\
  0.40117 0.21495 0.47093 0.55851 ,\
  0.40313 0.21412 0.47282 0.55849 ,\
  0.40509 0.21329 0.47470 0.55847 ,\
  0.40705 0.21245 0.47659 0.55844 ,\
  0.40900 0.21161 0.47848 0.55840 ,\
  0.41096 0.21077 0.48036 0.55836 ,\
  0.41292 0.20992 0.48225 0.55832 ,\
  0.41487 0.20907 0.48413 0.55827 ,\
  0.41683 0.20822 0.48601 0.55822 ,\
  0.41879 0.20737 0.48790 0.55817 ,\
  0.42074 0.20651 0.48978 0.55811 ,\
  0.42270 0.20564 0.49166 0.55804 ,\
  0.42466 0.20478 0.49354 0.55797 ,\
  0.42661 0.20391 0.49542 0.55789 ,\
  0.42857 0.20303 0.49729 0.55781 ,\
  0.43053 0.20215 0.49917 0.55772 ,\
  0.43249 0.20127 0.50105 0.55763 ,\
  0.43444 0.20038 0.50293 0.55754 ,\
  0.43640 0.19949 0.50480 0.55743 ,\
  0.43836 0.19859 0.50668 0.55732 ,\
  0.44031 0.19769 0.50855 0.55721 ,\
  0.44227 0.19679 0.51043 0.55709 ,\
  0.44423 0.19588 0.51230 0.55696 ,\
  0.44618 0.19496 0.51418 0.55683 ,\
  0.44814 0.19404 0.51605 0.55669 ,\
  0.45010 0.19311 0.51793 0.55655 ,\
  0.45205 0.19218 0.51980 0.55640 ,\
  0.45401 0.19124 0.52168 0.55624 ,\
  0.45597 0.19030 0.52355 0.55607 ,\
  0.45793 0.18935 0.52542 0.55590 ,\
  0.45988 0.18840 0.52730 0.55572 ,\
  0.46184 0.18744 0.52917 0.55554 ,\
  0.46380 0.18647 0.53104 0.55534 ,\
  0.46575 0.18550 0.53292 0.55514 ,\
  0.46771 0.18453 0.53479 0.55493 ,\
  0.46967 0.18355 0.53666 0.55472 ,\
  0.47162 0.18256 0.53854 0.55449 ,\
  0.47358 0.18157 0.54041 0.55426 ,\
  0.47554 0.18057 0.54229 0.55402 ,\
  0.47750 0.17957 0.54416 0.55377 ,\
  0.47945 0.17856 0.54603 0.55351 ,\
  0.48141 0.17755 0.54791 0.55325 ,\
  0.48337 0.17653 0.54978 0.55297 ,\
  0.48532 0.17550 0.55165 0.55269 ,\
  0.48728 0.17448 0.55353 0.55240 ,\
  0.48924 0.17344 0.55540 0.55210 ,\
  0.49119 0.17240 0.55728 0.55178 ,\
  0.49315 0.17136 0.55915 0.55146 ,\
  0.49511 0.17032 0.56103 0.55113 ,\
  0.49706 0.16927 0.56290 0.55079 ,\
  0.49902 0.16821 0.56478 0.55044 ,\
  0.50098 0.16716 0.56665 0.55008 ,\
  0.50294 0.16610 0.56853 0.54971 ,\
  0.50489 0.16503 0.57040 0.54933 ,\
  0.50685 0.16397 0.57228 0.54894 ,\
  0.50881 0.16290 0.57415 0.54854 ,\
  0.51076 0.16183 0.57603 0.54813 ,\
  0.51272 0.16077 0.57790 0.54770 ,\
  0.51468 0.15970 0.57978 0.54727 ,\
  0.51663 0.15863 0.58165 0.54682 ,\
  0.51859 0.15756 0.58353 0.54636 ,\
  0.52055 0.15649 0.58540 0.54589 ,\
  0.52250 0.15542 0.58728 0.54541 ,\
  0.52446 0.15436 0.58915 0.54492 ,\
  0.52642 0.15329 0.59103 0.54442 ,\
  0.52838 0.15223 0.59290 0.54390 ,\
  0.53033 0.15118 0.59478 0.54337 ,\
  0.53229 0.15013 0.59665 0.54283 ,\
  0.53425 0.14908 0.59853 0.54227 ,\
  0.53620 0.14805 0.60040 0.54170 ,\
  0.53816 0.14702 0.60228 0.54113 ,\
  0.54012 0.14600 0.60415 0.54053 ,\
  0.54207 0.14499 0.60602 0.53993 ,\
  0.54403 0.14399 0.60790 0.53931 ,\
  0.54599 0.14300 0.60977 0.53868 ,\
  0.54795 0.14203 0.61164 0.53803 ,\
  0.54990 0.14106 0.61351 0.53737 ,\
  0.55186 0.14012 0.61538 0.53669 ,\
  0.55382 0.13919 0.61725 0.53601 ,\
  0.55577 0.13828 0.61912 0.53530 ,\
  0.55773 0.13739 0.62099 0.53459 ,\
  0.55969 0.13652 0.62286 0.53386 ,\
  0.56164 0.13567 0.62473 0.53311 ,\
  0.56360 0.13485 0.62659 0.53235 ,\
  0.56556 0.13405 0.62846 0.53158 ,\
  0.56751 0.13328 0.63032 0.53079 ,\
  0.56947 0.13253 0.63219 0.52999 ,\
  0.57143 0.13183 0.63405 0.52917 ,\
  0.57339 0.13114 0.63591 0.52833 ,\
  0.57534 0.13050 0.63777 0.52748 ,\
  0.57730 0.12989 0.63963 0.52662 ,\
  0.57926 0.12933 0.64149 0.52574 ,\
  0.58121 0.12879 0.64335 0.52484 ,\
  0.58317 0.12831 0.64521 0.52393 ,\
  0.58513 0.12786 0.64706 0.52300 ,\
  0.58708 0.12747 0.64892 0.52206 ,\
  0.58904 0.12711 0.65077 0.52110 ,\
  0.59100 0.12682 0.65262 0.52012 ,\
  0.59295 0.12656 0.65447 0.51913 ,\
  0.59491 0.12637 0.65632 0.51812 ,\
  0.59687 0.12622 0.65816 0.51709 ,\
  0.59883 0.12615 0.66001 0.51605 ,\
  0.60078 0.12611 0.66185 0.51499 ,\
  0.60274 0.12616 0.66369 0.51391 ,\
  0.60470 0.12625 0.66553 0.51282 ,\
  0.60665 0.12642 0.66736 0.51171 ,\
  0.60861 0.12664 0.66920 0.51058 ,\
  0.61057 0.12694 0.67103 0.50944 ,\
  0.61252 0.12729 0.67286 0.50828 ,\
  0.61448 0.12773 0.67469 0.50710 ,\
  0.61644 0.12823 0.67652 0.50590 ,\
  0.61840 0.12881 0.67834 0.50469 ,\
  0.62035 0.12945 0.68016 0.50346 ,\
  0.62231 0.13018 0.68198 0.50220 ,\
  0.62427 0.13096 0.68380 0.50094 ,\
  0.62622 0.13185 0.68561 0.49965 ,\
  0.62818 0.13278 0.68742 0.49835 ,\
  0.63014 0.13381 0.68923 0.49703 ,\
  0.63209 0.13490 0.69104 0.49569 ,\
  0.63405 0.13608 0.69284 0.49433 ,\
  0.63601 0.13732 0.69464 0.49295 ,\
  0.63796 0.13865 0.69643 0.49156 ,\
  0.63992 0.14004 0.69823 0.49015 ,\
  0.64188 0.14153 0.70002 0.48871 ,\
  0.64384 0.14307 0.70181 0.48726 ,\
  0.64579 0.14471 0.70359 0.48579 ,\
  0.64775 0.14639 0.70537 0.48431 ,\
  0.64971 0.14818 0.70715 0.48280 ,\
  0.65166 0.15000 0.70892 0.48128 ,\
  0.65362 0.15193 0.71069 0.47973 ,\
  0.65558 0.15390 0.71246 0.47817 ,\
  0.65753 0.15597 0.71422 0.47658 ,\
  0.65949 0.15808 0.71598 0.47498 ,\
  0.66145 0.16029 0.71773 0.47336 ,\
  0.66341 0.16253 0.71948 0.47172 ,\
  0.66536 0.16487 0.72123 0.47006 ,\
  0.66732 0.16724 0.72297 0.46839 ,\
  0.66928 0.16971 0.72471 0.46669 ,\
  0.67123 0.17220 0.72644 0.46497 ,\
  0.67319 0.17479 0.72817 0.46323 ,\
  0.67515 0.17741 0.72990 0.46148 ,\
  0.67710 0.18012 0.73162 0.45970 ,\
  0.67906 0.18285 0.73333 0.45790 ,\
  0.68102 0.18567 0.73504 0.45609 ,\
  0.68297 0.18851 0.73675 0.45425 ,\
  0.68493 0.19145 0.73845 0.45240 ,\
  0.68689 0.19439 0.74015 0.45052 ,\
  0.68885 0.19743 0.74184 0.44863 ,\
  0.69080 0.20048 0.74353 0.44671 ,\
  0.69276 0.20362 0.74521 0.44478 ,\
  0.69472 0.20677 0.74689 0.44283 ,\
  0.69667 0.21000 0.74856 0.44085 ,\
  0.69863 0.21324 0.75022 0.43886 ,\
  0.70059 0.21657 0.75188 0.43684 ,\
  0.70254 0.21990 0.75354 0.43481 ,\
  0.70450 0.22332 0.75519 0.43275 ,\
  0.70646 0.22674 0.75683 0.43067 ,\
  0.70841 0.23024 0.75847 0.42857 ,\
  0.71037 0.23374 0.76010 0.42646 ,\
  0.71233 0.23732 0.76172 0.42432 ,\
  0.71429 0.24090 0.76334 0.42216 ,\
  0.71624 0.24456 0.76496 0.41998 ,\
  0.71820 0.24822 0.76656 0.41779 ,\
  0.72016 0.25195 0.76816 0.41557 ,\
  0.72211 0.25568 0.76976 0.41333 ,\
  0.72407 0.25949 0.77135 0.41107 ,\
  0.72603 0.26329 0.77293 0.40879 ,\
  0.72798 0.26717 0.77450 0.40648 ,\
  0.72994 0.27104 0.77607 0.40417 ,\
  0.73190 0.27498 0.77763 0.40182 ,\
  0.73386 0.27892 0.77919 0.39946 ,\
  0.73581 0.28293 0.78074 0.39707 ,\
  0.73777 0.28693 0.78228 0.39467 ,\
  0.73973 0.29100 0.78381 0.39224 ,\
  0.74168 0.29506 0.78534 0.38979 ,\
  0.74364 0.29919 0.78686 0.38732 ,\
  0.74560 0.30331 0.78837 0.38484 ,\
  0.74755 0.30750 0.78987 0.38232 ,\
  0.74951 0.31168 0.79137 0.37979 ,\
  0.75147 0.31592 0.79286 0.37724 ,\
  0.75342 0.32016 0.79434 0.37467 ,\
  0.75538 0.32446 0.79581 0.37207 ,\
  0.75734 0.32874 0.79728 0.36946 ,\
  0.75930 0.33310 0.79874 0.36682 ,\
  0.76125 0.33744 0.80019 0.36416 ,\
  0.76321 0.34184 0.80163 0.36148 ,\
  0.76517 0.34623 0.80306 0.35878 ,\
  0.76712 0.35069 0.80449 0.35606 ,\
  0.76908 0.35513 0.80591 0.35332 ,\
  0.77104 0.35963 0.80731 0.35055 ,\
  0.77299 0.36411 0.80872 0.34777 ,\
  0.77495 0.36866 0.81011 0.34496 ,\
  0.77691 0.37320 0.81149 0.34213 ,\
  0.77886 0.37779 0.81286 0.33928 ,\
  0.78082 0.38237 0.81423 0.33640 ,\
  0.78278 0.38701 0.81559 0.33351 ,\
  0.78474 0.39163 0.81694 0.33060 ,\
  0.78669 0.39632 0.81827 0.32766 ,\
  0.78865 0.40098 0.81961 0.32470 ,\
  0.79061 0.40571 0.82093 0.32172 ,\
  0.79256 0.41041 0.82224 0.31872 ,\
  0.79452 0.41518 0.82354 0.31569 ,\
  0.79648 0.41992 0.82484 0.31265 ,\
  0.79843 0.42473 0.82612 0.30958 ,\
  0.80039 0.42951 0.82740 0.30649 ,\
  0.80235 0.43435 0.82866 0.30338 ,\
  0.80431 0.43917 0.82992 0.30025 ,\
  0.80626 0.44405 0.83116 0.29710 ,\
  0.80822 0.44891 0.83240 0.29392 ,\
  0.81018 0.45382 0.83362 0.29072 ,\
  0.81213 0.45872 0.83484 0.28750 ,\
  0.81409 0.46367 0.83605 0.28426 ,\
  0.81605 0.46860 0.83725 0.28099 ,\
  0.81800 0.47358 0.83843 0.27771 ,\
  0.81996 0.47854 0.83961 0.27440 ,\
  0.82192 0.48355 0.84078 0.27107 ,\
  0.82387 0.48855 0.84194 0.26771 ,\
  0.82583 0.49359 0.84308 0.26434 ,\
  0.82779 0.49861 0.84422 0.26094 ,\
  0.82975 0.50369 0.84534 0.25753 ,\
  0.83170 0.50874 0.84646 0.25408 ,\
  0.83366 0.51384 0.84757 0.25062 ,\
  0.83562 0.51892 0.84867 0.24713 ,\
  0.83757 0.52405 0.84975 0.24363 ,\
  0.83953 0.52916 0.85083 0.24009 ,\
  0.84149 0.53431 0.85189 0.23655 ,\
  0.84344 0.53945 0.85295 0.23296 ,\
  0.84540 0.54462 0.85399 0.22937 ,\
  0.84736 0.54978 0.85503 0.22575 ,\
  0.84932 0.55498 0.85605 0.22212 ,\
  0.85127 0.56016 0.85707 0.21844 ,\
  0.85323 0.56538 0.85807 0.21477 ,\
  0.85519 0.57058 0.85907 0.21105 ,\
  0.85714 0.57582 0.86005 0.20734 ,\
  0.85910 0.58104 0.86103 0.20357 ,\
  0.86106 0.58630 0.86199 0.19982 ,\
  0.86301 0.59154 0.86294 0.19601 ,\
  0.86497 0.59681 0.86388 0.19221 ,\
  0.86693 0.60207 0.86482 0.18836 ,\
  0.86888 0.60735 0.86574 0.18452 ,\
  0.87084 0.61262 0.86666 0.18063 ,\
  0.87280 0.61793 0.86756 0.17675 ,\
  0.87476 0.62321 0.86845 0.17281 ,\
  0.87671 0.62852 0.86933 0.16890 ,\
  0.87867 0.63382 0.87021 0.16492 ,\
  0.88063 0.63914 0.87107 0.16098 ,\
  0.88258 0.64444 0.87193 0.15696 ,\
  0.88454 0.64977 0.87278 0.15298 ,\
  0.88650 0.65508 0.87361 0.14892 ,\
  0.88845 0.66042 0.87444 0.14492 ,\
  0.89041 0.66573 0.87526 0.14082 ,\
  0.89237 0.67107 0.87607 0.13679 ,\
  0.89432 0.67639 0.87687 0.13267 ,\
  0.89628 0.68173 0.87766 0.12862 ,\
  0.89824 0.68706 0.87845 0.12447 ,\
  0.90020 0.69240 0.87922 0.12041 ,\
  0.90215 0.69772 0.87999 0.11624 ,\
  0.90411 0.70306 0.88075 0.11218 ,\
  0.90607 0.70838 0.88150 0.10800 ,\
  0.90802 0.71371 0.88224 0.10395 ,\
  0.90998 0.71903 0.88298 0.09977 ,\
  0.91194 0.72435 0.88370 0.09574 ,\
  0.91389 0.72966 0.88443 0.09159 ,\
  0.91585 0.73498 0.88514 0.08761 ,\
  0.91781 0.74028 0.88585 0.08349 ,\
  0.91977 0.74559 0.88655 0.07959 ,\
  0.92172 0.75088 0.88724 0.07555 ,\
  0.92368 0.75617 0.88793 0.07175 ,\
  0.92564 0.76145 0.88861 0.06783 ,\
  0.92759 0.76673 0.88929 0.06419 ,\
  0.92955 0.77200 0.88996 0.06043 ,\
  0.93151 0.77726 0.89063 0.05703 ,\
  0.93346 0.78251 0.89129 0.05351 ,\
  0.93542 0.78775 0.89194 0.05042 ,\
  0.93738 0.79298 0.89260 0.04724 ,\
  0.93933 0.79820 0.89324 0.04457 ,\
  0.94129 0.80342 0.89389 0.04183 ,\
  0.94325 0.80862 0.89453 0.03970 ,\
  0.94521 0.81380 0.89516 0.03757 ,\
  0.94716 0.81898 0.89579 0.03617 ,\
  0.94912 0.82414 0.89642 0.03482 ,\
  0.95108 0.82930 0.89705 0.03422 ,\
  0.95303 0.83444 0.89767 0.03365 ,\
  0.95499 0.83956 0.89830 0.03385 ,\
  0.95695 0.84467 0.89892 0.03409 ,\
  0.95890 0.84977 0.89954 0.03510 ,\
  0.96086 0.85485 0.90015 0.03616 ,\
  0.96282 0.85992 0.90077 0.03800 ,\
  0.96477 0.86497 0.90138 0.03988 ,\
  0.96673 0.87001 0.90199 0.04250 ,\
  0.96869 0.87503 0.90261 0.04506 ,\
  0.97065 0.88003 0.90322 0.04824 ,\
  0.97260 0.88502 0.90383 0.05133 ,\
  0.97456 0.88999 0.90445 0.05497 ,\
  0.97652 0.89494 0.90506 0.05848 ,\
  0.97847 0.89987 0.90568 0.06246 ,\
  0.98043 0.90480 0.90629 0.06629 ,\
  0.98239 0.90969 0.90691 0.07053 ,\
  0.98434 0.91458 0.90753 0.07461 ,\
  0.98630 0.91944 0.90815 0.07904 ,\
  0.98826 0.92430 0.90877 0.08331 ,\
  0.99022 0.92912 0.90939 0.08788 ,\
  0.99217 0.93394 0.91002 0.09229 ,\
  0.99413 0.93872 0.91065 0.09697 ,\
  0.99609 0.94351 0.91128 0.10149 ,\
  0.99804 0.94825 0.91191 0.10625 ,\
  1.0 0.9529994532916154 0.9125452328290099 0.11085876909361342)

# END