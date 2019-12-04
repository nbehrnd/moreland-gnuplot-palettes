
# name:   readme_magma_testing.txt
# author: nbehrnd@yahoo.com
# date:   2019-12-03 (YYYY-MM-DD)
#
#
This folder recapitulates the comparison of two types of magma palettes,
performed under Linux Xubuntu 18.04.3 LTS.

+ Based on Kenneth Moreland's definition with 8, 16, 32, 64, 128, 256,
  512, or 1024 explicitly defined colors as floating numbers, his .csv
  data were converted with csv2plt.py.  The contribution of R, G, and B
  in the RGB space of each converted palette was analyzed with script
  palette_decomposition, yielding the .png named in a pattern of
  magma-table-float-0008_vig.png where the number equates the number of
  explicitly defined colors in Moreland's definitions.

+ https://raw.githubusercontent.com/Gnuplotting/gnuplot-palettes/master/magma.palette
  equally offers a definition which already is converted into a format
  accessible to gnuplot (magma.pal, sub-folder extra_palette_tests).  It
  contains 256 explicitly defined colors in the in lines #35 onward.
  This palette was equally load with gnuplot (5.2.7beta) to generate a
  .png file about the contributions of R, G, B in the RGB space accessed
  with the pngcairo terminal.

+ Assisted by script vignette_comparison.py (cf. tools sub-folder), all
  vignettes were compared with each other in a round-Robin tournament.
  To find out if the two palettes are identical, only the tests with
  vignettes of both types were retained here.  In the scrutiny by
  ImageMagick's compare routine, differences identified between two
  files are indicated by bright red pixels.

  The direct visual comparison of magma-table-float-0256_vig.png with
  manual_magma_1024_vig.png (the most similar palette definitions in
  terms of the number of explicitly defined colors) was concatenated
  with ImageMagick

  montage -mode concatenate -tile 3x1 magma-table-float-0256_vig.png \
     manual_magma_1024_vig.png \
     diff_magma-table-float-0256_vig_manual_magma_1024_vig.png \
     synopsis_magma_palettes.png

  The visual inspection of the synopsis (synopsis_magma_palettes.png)
  yields a small difference in G channel in the range of about [0.1,0.3].
  Equally, a slight bent is seen (or not) tracing the Y channel of the
  NTSC model.  The superposition reveals a lesser slope of the G channel
  in the range of about [0.1,0.6] for Morland's definition, than for the
  palette definition by the gnuplotting platform.

  The inspection of the reference color stripe reveals gnuplot recognizes
  almost all composed colors of one definition to differ from the other.

+ The individual differences between Morland's magma palette definitions
  with 8, 16, 32, 64, 128, 256, 512, and 1024 colors on one hand, with
  the magma palette definition with 256 colors by gnuplotting, on the
  other hand, were merged with ImageMagick into an animated .gif by

  convert -loop -1 -delay 100 diff_magma*.png magma_diff.gif

  The inspection of the .gif with the ristretto viewer (version 0.8.2)
  reveals that all tests reveal the difference regarding the bent of the
  G channel and the slopes of the R and Y channel.

# END
