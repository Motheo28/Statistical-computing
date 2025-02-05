if (!requireNamespace("usethis", quietly = TRUE)) {
  install.packages("usethis")
}
gert::git_config_global()
username <- "Motheo Mokgabudi"
email <- "MKGMOT018@myuct.ac.za" 
stopifnot(!is.null(username))
stopifnot(!is.null(email))
gert::git_config_global_set("user.name",  username)
gert::git_config_global_set("user.email", email)
usethis::use_git()
