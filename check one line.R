# Document start time
ptm <- proc.time()

# Specify read file and write file
inputFile <- "/data/share/xproject/training/Data Sources/PD-2017-National-Emissions-Inventory-point_678910.csv"

# Create connections for both files
incon  <- file(inputFile, open = "r")

# Check n lines of file to see if we run into errors and also check data structure
n <- 1
while (n < 5) {
  oneLine <- readLines(incon, n = 1)
  print(oneLine)
  n <- n + 1
}

# Close connections
close(incon)

# Calculate run time
proc.time() - ptm
