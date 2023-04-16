library(here)
library(Technical)

Content_Folder <- paste0(here::here(), "/content/english/blog/")
Weekly_Folder <- paste0(Content_Folder, format(Sys.Date(),"%Y-%m-%d"),"_Weekly-Market-Update/")

create_directory(Weekly_Folder)

file.copy(paste0(here::here(),"/R/Weekly_Yahoo/index.qmd"), paste0(Weekly_Folder, "index.qmd"))
#dir.copy(paste0(here::here(),"/R/index.md"), paste0(Weekly_Folder, "index.markdown_strict_files"))

## Copy updated file to R folder

file.copy(paste0(Weekly_Folder, "index.qmd"), paste0(here::here(),"/R/Weekly_Yahoo/index.qmd"), overwrite = TRUE)


