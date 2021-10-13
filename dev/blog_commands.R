options(blogdown.server.timeout = 600)
blogdown:::serve_site(.site_dir = "blog", port=1313)
blogdown::new_post()

blogdown::build_site(build_rmd = TRUE)

setwd("blog")
> blogdown::build_site(build_rmd = TRUE)