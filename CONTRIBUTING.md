Contributing to tidyomics
===

:+1::tada: First off, thanks for taking the time to contribute! :tada::+1:

The following is a set of guidelines for contributing to this training material on GitHub.

# Table of contents

- [What should I know before I get started?](#what-should-i-know-before-i-get-started)
- [How can I contribute to the ecosystem?](#how-can-i-contribute)
- [How can I add a post to the blog?](#how-do-i-add-new-content)
- [How is the training material maintained?](#how-is-the-training-material-maintained)

# What should I know before I get started?

This repository contains the files for the tidyomicsBlog.

By contributing, you agree that we may redistribute your work under [this repository's license](LICENSE.md).

We will address your issues and/or assess your change proposal as promptly as we can.

If you have any questions, you can reach us by creating an [Issue](https://github.com/tidyomics/tidyomicsBlog/issues/new/choose) in the workshop repository.

# How can I contribute to the ecosystem?

You can report mistakes or errors, add suggestions, additions, updates or improvements for content. Whatever is your background, there is probably a way to do it: via the GitHub website, via command-line. If you feel it is too much, you can even write it with any text editor and contact us: we will work together to integrate it.

# How can I add a post to the blog?

We are using Hugo and BlogDown to build our blog. These tools take care of most of the work for us, so that adding a new blog post is quick to do. If you would like more information about Hugo and BlogDown you can find the documentation here: https://bookdown.org/yihui/blogdown/hugo.html.

In brief, the process to add a post is:

1. Create a fork of the `tidyomicsBlog` repository.
2. Create a new directory for your post in the format of YYYY-MM-DD-post-name, within the `tidyomicsBlog/blog/content/post` directory. 
3. Write your blog post as an Rmd file and add it to the directory you created. All files needed for your Rmd file to run should also be placed within the directory you created.
4. Change your working directory to `tidyomicsBlog/blog`.
4. Call the function `blogdown::build_site(build_rmd = "newfile")` to create a html file from your Rmd file.
5. Call the function `blogdown::serve_site()` to locally render the website and inspect your work.
6. And you're done! If it all looks good, commit your changes and create a pull request to integrate your new post into the blog.

# How is the training material maintained?

## Maintainers

The maintainers are listed in the [DESCRIPTION](https://github.com/tidyomics/tidyomicsBlog/blob/master/DESCRIPTION) file.

They are responsible for making sure issues and change requests are looked at. They have the final say over what is included in the training material.

## Labels

This repository is using the following labels for issues, pull requests and project management:

- Type
    - `bug`: errors to be fixed
    - `improvement`: enhancement to an existing functionality
    - `feature`: new functionality
    - `discussion`: discussion threads
    - `question`: often turn into discussion threads
- Status
    - `help-wanted`: requests for assistance
    - `newcomer-friendly`: suitable for people who want to start contributing
    - `work-in-progress`: someone is working on this
    - `review-needed`: requests for review
