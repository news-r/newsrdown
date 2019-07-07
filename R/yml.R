#' Create pkgdown yml
#' 
#' Copies `_pkgdown.yml` to current directory.
#' 
#' @export
create_pkgdown <- function() {
  ans <- "y"
  if(file.exists("_pkgdown.yml"))
    ans <- readline("Are you sure you want to override `_pkgdown.yml`? (y/n)\n")

  if(tolower(ans) != "y")
    invisible()

  x <- file.copy(
    system.file("templates/_pkgdown.yml", package = "newsrdown"),
    "index.Rmd"
  )

  if(x){
    cat(crayon::green(cli::symbol$tick), "`_pkgdown.yml` successfully copied\n")
    usethis::use_build_ignore("_pkgdown.yml", escape = TRUE)
  } else
    cat(crayon::red(cli::symbol$cross), "failed to copy `_pkgdown.yml`\n")
  invisible()
}