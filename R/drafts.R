
#' @export
get_drafts_by_user <- function(user_id, season = 2022) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/user/", get_user_by_name(user_name)$user_id[1],
                                      "/drafts/nfl/", season)))
  data.frame(t(sapply(t,c)))
}

#' @export
get_all_drafts_by_league <- function(league_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/drafts")))
  data.frame(t(sapply(t,c)))
}

#' @export
#
## NOT WORKING
get_draft_by_id <- function(draft_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/draft/", draft_id)))
  data.frame(t(sapply(t,c)))
}

#' @export
#
## NEEDS WORK
get_picks_in_draft <- function(draft_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/draft/", draft_id, "/picks")))
  data.frame(t(sapply(t,c)))
}

#' @export
get_traded_picks_in_draft <- function(draft_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/draft/", draft_id, "/traded_picks")))
  data.frame(t(sapply(t,c)))
}
