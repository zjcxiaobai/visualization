library(readr)
library(dplyr)
library(lubridate)
library(ggplot2)

# read csv 
df <- read_csv("volumes_atr_cyclists_permanent.csv", show_col_types = FALSE)

# read the datetime
df2 <- df %>%
  mutate(dt = datetime_bin) %>%  
  filter(!is.na(dt))

# monthly sums per direction
monthly_dir <- df2 %>%
  mutate(month = floor_date(dt, unit = "month")) %>%
  group_by(month, direction) %>%
  summarise(volume_month = sum(volume_15min, na.rm = TRUE), .groups = "drop") %>%
  arrange(month)

# build plot object
p <- ggplot(monthly_dir, aes(x = month, y = volume_month, color = direction)) +
  geom_line(linewidth = 1) +
  labs(
    title = "Monthly Cycling Volume by Direction",
    x = "Month",
    y = "Total cyclist volume (sum of 15-min counts)",
    color = "Direction"
  ) +
  theme_minimal()

# show in R
print(p)

# save images
ggsave("monthly_cycling_by_direction.png", plot = p, width = 10, height = 5, dpi = 300)
