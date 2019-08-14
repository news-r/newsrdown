# newsrdown

<!-- badges: start -->
<!-- badges: end -->

`newsrdown` includes functions that facilitate building documentation websites for [news-r](https://news-r.org) packages.

## Installation

You can install `newsrdown` from Github with:

``` r
# install.packages("remotes")
remotes::install_github("news-r/newsrdown")
```

# Usage

Use in `_pkgdown.yml`.

```yaml
template:
  package: newsrdown
```

Helper functions:

```r
# create _pkgdown.yml
newsrdown::create_pkgdown()

# Create template of `index.Rmd`
newsrdown::create_index_page()
```

Feel free to use this package although it's probably not of use outside of [news-r](https://news-r.org) package, you will find and example [here](https://accunews.news-r.org/).
