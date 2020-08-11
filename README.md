<!-- badges: start -->
[![.github/workflows/basic_checks.yaml](https://github.com/stemangiola/tidytranscriptomics/workflows/.github/workflows/basic_checks.yaml/badge.svg)](https://github.com/stemangiola/tidytranscriptomics/actions) [![Docker](https://github.com/Bioconductor/BioC2020/raw/master/docs/images/docker_icon.png)](https://hub.docker.com/repository/docker/stemangiola/tidytranscriptomics) 	
[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3959148.svg)](https://doi.org/10.5281/zenodo.3959148)
<!-- badges: end -->


The manifesto, workshops and tutorials of the tidy transcriptomics.
**All this is very work-in-progress**

# The tidy transcriptomics manifesto
This document lays down the principles of tidy transcriptomics, of which `tidybulk` and `tidysc` are based on. These principles are in line with [the tidy tools manifesto](https://cran.r-project.org/web/packages/tidyverse/vignettes/manifesto.html).

- **Use easy-to-understand, verbose, jargon- and acronym-free vocabulary.** If the English dictionary is not enough to understand the underlying meaning of a function or a variable name, it is a bad sign. Learning is incredibly slown-down by a cryptic vocabulary; and the cost of saving few characters is usually bigger than you think.
- **Present/visualise information in its raw form when possible.** Modern visualisation tools (e.g. ggplot) allow to use custom scales to visualise data. For example, for visualising p-values apply the `log10_reverse` scale instead of transforming the p-values in their negative-log form; for visualising (raw, scaled and/or adjusted) transcript abundance (in the form of read counts) use the `log1p` scale instead of transforming the data in its log (or count-per-million) form.
- **Avoid the creation of temporary variables when possible, and always avoid variable updating.** When working interactively, data-containing variables is a bug-prone process, especially if multiple assignments are done on the same variable though the workflow. The main utility of variables should be to store data that is used more than once. Tidyverse allows extremely complex operations in a functional way.


Workshops

## 30 minutes

BioC2020

## 1h

- comparison of different differential transcript abundance testing tools
- the material we took off the first workshop
- comparing all counts (raw,scaled, adjusted) after differential transcript abundance testing

## 2h

- signature creation
- single cell sudobulk
- nest functionality


### Via GitHub

Alternatively, you could install the workshop using the commands below in R `4.0`.

```
devtools::install_github("stemangiola/tidybulk")
devtools::install_github("stemangiola/tidytranscriptomics", build_vignettes = TRUE)
library(tidytranscriptomics)
vignette("tidytranscriptomics")
```
