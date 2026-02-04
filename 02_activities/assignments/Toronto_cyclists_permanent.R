# 1) read data
df <- read.csv("volumes_atr_cyclists_permanent.csv", stringsAsFactors = FALSE)
print(names(df))
print(dim(df))

df <- read.csv("volumes_atr_cyclists_permanent.csv", stringsAsFactors = FALSE)
df$dt <- as.Date(df$dt)

# 2) aggregate total volume by location (place-focused)
tot <- aggregate(volume_daily ~ location, data = df, sum, na.rm = TRUE)

# 3) top 10
tot <- tot[order(tot$volume_daily, decreasing = TRUE), ]
top10 <- head(tot, 10)

# 4) bar plot
png("viz2_top10_locations.png", width = 1200, height = 700, res = 150)
par(mar = c(5, 18, 4, 2))  # big left margin for long location names
barplot(
  top10$volume_daily,
  names.arg = top10$location,
  horiz = TRUE,
  las = 1,
  main = "Top 10 Cycling Count Locations (Permanent Stations)",
  xlab = "Total cyclist volume (sum of daily counts)"
)
dev.off()

print(top10)
