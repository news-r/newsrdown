#' Copy index template
#' 
#' Copies `index.Rmd` to current directory.
#' 
#' @export
create_index_page <- function() {
  ans <- "y"
  if(file.exists("index.Rmd"))
    ans <- readline("Are you sure you want to override `index.Rmd`? (y/n)\n")

  if(tolower(ans) != "y")
    invisible()

  x <- file.copy(
    system.file("templates/index.Rmd", package = "newsrdown"),
    "index.Rmd"
  )

  if(x){
    cat(crayon::green(cli::symbol$tick), "`index.Rmd` successfully copied\n")
    usethis::use_build_ignore("index.Rmd", escape = TRUE)
  } else
    cat(crayon::red(cli::symbol$cross), "failed to copy `index.Rmd`\n")
  invisible()
}