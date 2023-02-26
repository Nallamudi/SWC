library(here)
library(Technical)

Content_Folder <- paste0(here::here(), "/content/english/blog/")
Weekly_Folder <- paste0(Content_Folder, format(Sys.Date(),"%Y-%m-%d"),"_Weekly-Market-Update/")

Create_Dir(Weekly_Folder)

file.copy(paste0(here::here(),"/R/index.qmd"), paste0(Weekly_Folder, "index.qmd"))
#dir.copy(paste0(here::here(),"/R/index.md"), paste0(Weekly_Folder, "index.markdown_strict_files"))

