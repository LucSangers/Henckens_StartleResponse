library(readxl)

folder <- "C:/Users/lsang/OneDrive/Universiteit/Neuroscience and Cognition/Profile Research Project/03_Analysis/02_Behaviour/PPI"
startle_latency <- "`120dB`"   # the numeric variable you are comparing
group   <- "Group"     # the column that holds the two groups

files <- list.files(path = folder, pattern = "*\\.xlsx", full.names = TRUE)

test_formula <- as.formula(paste(startle_latency, "~", group))

for (file in files) {
  print(file)
  df <- read_excel(file)
  print(t.test(`120dB` ~ Group, data = df))
}