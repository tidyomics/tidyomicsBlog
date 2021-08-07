---
title: Tidy-transcriptomics manifesto
author: Stefano & Maria
date: '2021-07-07'
slug: []
categories:
  - all platforms
tags:
  - tidytranscriptomics
  - manifesto
  - transcriptomics
  - tidyverse
lastmod: '2021-07-07T14:16:36+10:00'
keywords: []
description: ''
comment: no
toc: no
autoCollapseToc: no
postMetaInFooter: no
hiddenFromHomePage: no
contentCopyright: no
reward: no
mathjax: no
mathjaxEnableSingleDollar: no
mathjaxEnableAutoNumber: no
hideHeaderAndFooter: no
flowchartDiagrams:
  enable: no
  options: ''
sequenceDiagrams:
  enable: no
  options: ''
---

<!--more-->

<img src="images/logo.png" alt="tidytranscriptomics_logo" width="100px" height="100px"/>

In this first post, we want to introduce the concept of tidy transcriptomics and its principles is moved by.

# What is tidy transcriptomics

Tidy transcriptomics is a specific approach to transcriptomic data analysis in R, that uses the "tidy" principles proposed by [Wickham et al.](https://joss.theoj.org/papers/10.21105/joss.01686.pdf). Tidy transcriptomics introduces both a tidy data representation and manipulation (for single-cell and bulk) with the packages `tidySummarizedExperiment`, `tidySingleCellExperiment`, and `tidyseurat` and a tidy analysis workflow (for bulk data) with the package `tidybulk`.

# The tidy transcriptomics manifesto

This manifesto lays down the principles of tidy transcriptomics that `tidybulk` and `tidySummarizedExperiment`, `tidySingleCellExperiment`, and `tidyseurat` are based on. These principles are in line with [the tidy tools manifesto](https://cran.r-project.org/web/packages/tidyverse/vignettes/manifesto.html).

-   **Use easy-to-understand, verbose, jargon- and acronym-free vocabulary.** If the English dictionary is not enough to understand the underlying meaning of a function or a variable name, it is a bad sign. _https://iubmb.onlinelibrary.wiley.com/doi/10.1002/bmb.20922_; and the cost of saving a few characters may be bigger than we think.
-   **Present/visualise information in its raw form when possible.** Modern visualisation tools (e.g. ggplot2) allow the use of custom scales to visualise data. For example, for visualising p-values apply the `log10_reverse` scale instead of transforming the p-values in their negative-log form; for visualising (raw, scaled and/or adjusted) transcript abundance (in the form of read counts) use the `log1p` scale instead of transforming the data in its log (or log count-per-million) form.
-   **Avoid the creation of temporary variables when possible.** When working interactively, creating variables to store data is a bug-prone process, especially if multiple assignments are done on the same variable through the workflow. The main utility of variables should be to store data that is used more than once. Tidyverse allows complex operations to be combined in a simple way, reducing the need to create temporary variables.

# Integration map

All packages are under active development, and are in a [maturing](https://lifecycle.r-lib.org/articles/stages.html) lifecycle.

<img src="images/roadmap_integration.png" alt="roadmap" width="90%"/>

There are two parts in the tidy transcriptomics ecosystem: data and analysis framework. So far, for bulk RNA sequencing both data (tidySummarizedExperiment) and analysis (tidybulk) frameworks are available. In contrast,for single cell only data frameworks are available (tidySingleCellExperiment and tidyseurat).

## What data frameworks are and what they are not

Data frameworks are not data containers. Data frameworks are data-abstraction that display and manipulate your existing containers (i.e. `SummarizedExperiment`, `SingleCellExperiment` and `Seurat` object) in a tidy manner. Therefore there is not such a thing as `tidy*` object. This has the advantage of allowing you to use tidyverse on transcriptomics data without compromising your existing pipelines. That is, if a method works for `SummarizedExperiment` it works for its tidy representation.

Therefore, the question "can we go from `tidySummarizedExperiment` to `SummarizedExperiment` and viceversa" is not relevant, as we never leave `SummarizedExperiment` in the first place.

## Giving a consistent interface despite different data containers

With tidy transcriptomics, we differentiate the data container from the user interface. As an analogy, if we want to see picture of cats, we don't care that a Unix and Windows machines store information in the hard drive differently. Similarly, if we want to display, manipulate and visualise transcriptomic data, we might not care how the data is stored.

## Which analysis framework can interface with which data framework

**Bulk RNA sequencing data**

-   `SummarizedExperiment` can interface with `Bioconductor` and `tidybulk`

-   `tibble` can interface with tidyverse and `tidybulk`

-   `tidySummarizedExperiment` can interface with all three: `Bioconductor`, tidyverse and `tidybulk`

**Single-cell RNA sequencing data**

-   `SingleCellExperiment` can interface with `Bioconductor`

-   `tidySingleCellExperiment` can interface with `Bioconductor` and `tidyverse`

-   `Seurat` object can interface with `Seurat`

-   `tidyseurat` object can interface with `Seurat` and `tidyverse`

# Learning material

We delivered a series of workshops on tidy transcriptomics, which track the progress of the ecosystem.

[Bioc 2021](https://stemangiola.github.io/bioc2021_tidytranscriptomics/index.html)

[ISMB/ECCB 2021](https://tidytranscriptomics-workshops.github.io/ismb2021_tidytranscriptomics/index.html)

[R-Ladies Tunis 2021](https://stemangiola.github.io/rladiestunis2021_tidytranscriptomics/index.html)

[Euro Bioc 2020](https://stemangiola.github.io/bioceurope2020_tidytranscriptomics/index.html)

[ABACBS 2020](https://stemangiola.github.io/ABACBS2020_tidytranscriptomics/index.html)

[Bioc Asia 2020](https://stemangiola.github.io/biocasia2020_tidytranscriptomics/index.html)

[R/Pharma 2020](https://stemangiola.github.io/rpharma2020_tidytranscriptomics/index.html)

[Bioc 2020](https://stemangiola.github.io/bioc_2020_tidytranscriptomics/index.html)

# How to cite tidy transcriptomics

### tidybulk

Mangiola, S., Molania, R., Dong, R. et al. tidybulk: an R tidy framework for modular transcriptomic data analysis. Genome Biol 22, 42 (2021). <https://doi.org/10.1186/s13059-020-02233-7>

### tidyseurat

Stefano Mangiola, Maria A Doyle, Anthony T Papenfuss, Interfacing Seurat with the R tidy universe, Bioinformatics, 2021;, btab404, <https://doi.org/10.1093/bioinformatics/btab404>

### tidySummarizedExperiment and tidySingleCellEXeperiment

You can use `tidyseurat` citation as introduces the concepts of data abstraction.
