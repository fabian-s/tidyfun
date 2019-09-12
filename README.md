
<!-- README.md is generated from README.Rmd. Please edit that file -->
tidyfun <img src="README_files/figures/tidyfun_hex.gif" align="right" height = "150" />
=======================================================================================

[![Build Status](https://travis-ci.org/fabian-s/tidyfun.svg?branch=master)](https://travis-ci.org/fabian-s/tidyfun)

**`tidyfun`** makes data wrangling and exploratory analysis of functional data easier.

**`tidyfun`** provides:

-   new **data types** for representing functional data
-   arithmetic **operators**, descriptive **statistics** and **graphics** functions for such data
-   `tidyverse`-verbs for handling functional data **inside** data frames.

Look [here](https://fabian-s.github.io/tidyfun/articles/x01_Intro.html) for an introduction with examples.

Installation
------------

``` r
devtools::install_github("fabian-s/tidyfun")
```

What does it do?
----------------

#### New vector-like data types for functional data

**`tidyfun`** provides [new `S3`-classes for functional data](https://tidyfun.github.io/tidyfun/reference/index.html#section-tf-sub-classes-constructors-converters), either as raw data (class `tfd` for *t*idy *f*unctional *d*ata) or in basis representation (class `tfb` for *t*idy *f*unctional *b*asis data).

Such `tf`-objects can be subsetted or subassigned, computed on and summarized.

Almost all

-   operators like `==`, `+` or `*`
-   math functions like `sum`, `log` or `abs`
-   and statistics functions like `mean` or `sd`

are defined for **`tidyfun`**'s data structures ([more](https://tidyfun.github.io/tidyfun/reference/index.html#section-arithmetic-logical-and-summary-functions)).

The `tf` objects are basically glorified lists, so they work well as columns in data frames. That makes it a lot easier to keep your other data and functional measurements together in one object for preprocessing, exploratory analysis and description.

At the same time, these objects actually behave like vectors of *functions* to some extent, i.e., they can be evaluated on any point in their domain, they can be integrated or differentiated, etc.

#### `tidyverse` verbs for dealing with functional data inside data frames

All `dplyr` verbs work on `tf`-columns, so you can `filter`, `mutate`, `summarize` etc functional data pretty much like conventional data.
**`tidyfun`** also provides `tf_gather` & `tf_spread`, `tf_nest` & `tf_unnest` in order to reshape tables with functional data, i.e., go from wide to narrow, or from long to short, and *vice versa* ([see here](https://fabian-s.github.io/tidyfun/articles/x02_Data_Manipulation.html)).

#### New `ggplot2` `geoms` and `stats` for functional data

**`tidyfun`** defines **pasta-themed** `geom`s for functional data:

-   **`geom_spaghetti`** for lines,
-   **`geom_meatballs`** for (lines &) points,
-   **`gglasagna`** for [lasagna plots](https://asset.jmir.pub/assets/76aeec48564abf0e6f6da8e9cd06346d.png), with an **`order`**-aesthetic to sort the lasagna layers,
-   **`geom_capellini`** for [glyphs](http://ggobi.github.io/ggally/index_files/figure-html/glyphs-basic-usage-1.png) plots (i.e., sparklines),

as well as new methods for `plot`, `lines` and `points` for quick and easy visualizations of functional data ([more](https://tidyfun.github.io/tidyfun/reference/index.html#section-visualization-display)).

------------------------------------------------------------------------

Found a bug? Got a question? Missing some functionality?
Please let us know so we can make it better.
