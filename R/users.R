
#' @export
get_user_by_id <- function(user_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/user/", user_id)))
  t <- data.frame(t(sapply(t,c)))
  return(t[, c("username", "user_id", "display_name", "avatar")])
}

#' @export
get_user_by_name <- function(user_name) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/user/", user_name)))
  t <- data.frame(t(sapply(t,c)))
  return(t[, c("username", "user_id", "display_name", "avatar")])
}

#' @export
get_user_avatar <- function(user_name) {

  paste0("https://sleepercdn.com/avatars/thumbs/",
                                 get_user_by_name(user_name)$avatar[1])
}
