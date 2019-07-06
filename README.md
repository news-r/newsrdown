# newsrdown

<!-- badges: start -->
<!-- badges: end -->

`newsrdown` includes functions that facilitate building documentation websites for [news-r](https://news-r.org) packages.

## Installation

You can install `newsrdown` from Github with:

``` r
install.packages("newsrdown")
```

# Usage

Use in `_pkgdown.yml`.

```yaml
template:
  package: newsrdown
```

Create template of `index.Rmd`.

```r
newsrdown::create_index_page()
```

