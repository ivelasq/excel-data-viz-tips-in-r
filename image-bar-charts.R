# Image Bar Charts
library(ggplot2)
library(ggpattern)

logo1 <- "~/R/excel-data-viz-tips-in-r/images/excel.png"
logo2 <- "~/R/excel-data-viz-tips-in-r/images/sheets.png"
logo3 <- "~/R/excel-data-viz-tips-in-r/images/tibble.png"

ggplot(mtcars) +
  geom_bar_pattern(
    alpha = 0,
    aes(cyl,
        pattern_filename = as.factor(cyl)),
    pattern = "image",
    pattern_type = "squish"
  ) +
  scale_pattern_filename_manual(
    values = c(`4` = logo1, `6` = logo2, `8` = logo3)
    ) +
  theme_minimal() +
  theme(legend.position = "none") +
  ggtitle("Votes")

ggsave("images/image-bar-chart.png", device = "png")
