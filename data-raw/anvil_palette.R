## code to prepare `anvil_palette` datasets go here

library(palettes)

#' A light and dark discrete palette for AnVIL
#'
#' This color palette is a discrete color palette with
#' 4 dark colors and 4 light colors, all from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette).
#' These are created manually.

anvil_palette_discrete <- pal_palette(
  light = c("#F2F2F2", "#E0DD10", "#AEEBF2", "#7EBAC0"),
  dark = c("#035C94","#012840", "#25445A", "#333333")
)

plot(anvil_palette_discrete)

usethis::use_data(anvil_palette_discrete, overwrite = TRUE)

#' A sequential color palette for AnVIL
#'
#' This color palette is a sequential color palette with
#' darker blues (`blue`), lighter blue-greens (`lightgreen`),
#' and darker yellow greens (`yellow`).
#' These are programmatically defined and the base colors used
#' to make the color ramps are from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette).

anvil_palette_sequential <- pal_palette(
  blue = pal_ramp(pal_colour(c("#035C94", "#012840")), n = 7),
  lightgreen = pal_ramp(pal_colour(c("#F2F2F2", "#7EBAC0")), n =7),
  yellow = pal_ramp(pal_colour(c("#E0DD10", "#333333")), n=7)
)

plot(anvil_palette_sequential)

usethis::use_data(anvil_palette_sequential, overwrite = TRUE)

#' A sequential blue palette for AnVIL
#'
#' This color palette is a sequential color palette with
#' just blues, using base colors from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette).


anvil_palette_sequential_blues <- pal_palette(
  c("#035C94","#035385","#024A77","#024168", "#02395B")
)

plot(anvil_palette_sequential_blues)

usethis::use_data(anvil_palette_sequential_blues, overwrite = TRUE)

#' A diverging color palette for AnVIL
#'
#' This color palette is a diverging color palette with
#' darker blues going towards lighter blues with an off white in the middle
#' and then lighter yellows going towards darker yellow greens.
#' These are programmatically defined and the base colors used
#' to make the color ramps are from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette).


anvil_palette_diverging <- pal_palette(
  c(pal_ramp(pal_colour(c("#012840","#035C94")), n = 7), #make 7 colors from dark blue to primary AnVIL blue
    c("#7EBAC0","#AEEBF2"), #add two lighter blues.
    pal_ramp(pal_colour(c("#F2F2F2","#E0DD10" )), n=4), #use off white, make 2 lighter yellows in between the off white and the yellow, and include the AnVIL yellow
    tail(pal_ramp(pal_colour(c("#E0DD10", "#333333")), n=7),6) #use tail so the yellow isn't repeated
  )
)

plot(anvil_palette_diverging)

usethis::use_data(anvil_palette_diverging, overwrite = TRUE)


#' Full palette for AnVIL
#'
#' This color palette lists all of the colors from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette).

anvil_palette_full <- pal_palette(
  c("#035C94", "#012840", "#F6F7F4", "#F2F2F2", "#E0DD10", "#AEEBF2", "#7EBAC0", "#25445A", "#333333")
)

plot(anvil_palette_full)

usethis::use_data(anvil_palette_full, overwrite = TRUE)

#' Qualitative Binary palette for AnVIL
#'
#' This color palette takes two contrasting colors from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette) and uses them as the color palette.

anvil_palette_contrast2 <- pal_palette(
  c("#035C94", "#E0DD10")
)

plot(anvil_palette_contrast2)

usethis::use_data(anvil_palette_contrast2, overwrite = TRUE)

#' Qualitative secondary binary palette for AnVIL
#'
#' This color palete takes two complementary colors from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette) and uses them as the color palette.

anvil_palette_complement2 <- pal_palette(
  c("#25445A", "#7EBAC0")
)

plot(anvil_palette_complement2)

usethis::use_data(anvil_palette_complement2, overwrite = TRUE)

#' Single AnVIL color
#'
#' This is a single color from the
#' [AnVIL style guide](https://anvilproject.org/guides/style/color-palette) and uses them as the color palette.

anvil_palette_single <- pal_palette(
  c("#25445A")
)

plot(anvil_palette_single)

usethis::use_data(anvil_palette_single, overwrite = TRUE)


# All palettes
anvil_palettes <- c(
  anvil_palette_discrete,
  anvil_palette_sequential,
  anvil_palette_sequential_blues,
  anvil_palette_diverging,
  anvil_palette_full,
  anvil_palette_contrast2,
  anvil_palette_complement2,
  anvil_palette_single
)

usethis::use_data(anvil_palettes, overwrite = TRUE)
