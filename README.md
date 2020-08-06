The manifesto, workshops and tutorials of the tidy transcriptomics.
**All this is very work-in-progress**

# The tidy transcriptomics manifesto
This document lays down the principles of tidy transcriptomics, of which tidybulk and tidysc are based on. These principles are in line with [the tidy tools manifesto](https://cran.r-project.org/web/packages/tidyverse/vignettes/manifesto.html).

- **Avoid creation of temporary variables when possible, and variable updating.** The rationale is that when working interactively, data-containing variables is a bug-prone process, especially if multiple assignments are done on the same variable though the workflow. Variable should be created for storing data that is used more than once. Tidyverse allows extremely complex operations on dataframe in a functional way.
- **Use easy-to-understand, verbose, jargon-free and acronym-free vocabulary.** If the english dictionary is not enough to understand the underlying meaning of a function and variable name, it is a bad sign. Learning is incredibly slown-down by a criptic vocabulary; the cost of saving few characters is usually bigger than you think.
- **Present/visualise information in it's raw form when possible.** Modern visualisation tools (e.g. ggplot) allow to use custom scales to visualise data. For example, for visualising p-values apply the `log10_reverse` scale instead of transforming the p-values in their negaive log form; for visualising (raw, scaled and/or adjusted) transcript abundance (in the form of read counts) use the `log1p` scale instead of transforming the data in it's log (or count-per-million) form.


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
