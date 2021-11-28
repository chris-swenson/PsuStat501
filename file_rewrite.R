library(readr)

files <- list.files(path="./Data")

read_write_tsv <- function(file){
  path_and_file <- paste0("./Data/", file)
  new_path_and_file <- paste0("./DataNew/", file)
  print(path_and_file)
  df <- read.table(path_and_file, header=TRUE, encoding='UTF-8')
  readr::write_tsv(df, new_path_and_file, na='*', eol="\r\n")
}

lapply(files, read_write_tsv)
