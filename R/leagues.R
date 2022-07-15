
#' @export
get_all_leagues_for_user <- function(user_name, season = 2022) {

  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/user/", get_user_by_name(user_name)$user_id[1],
                   "/leagues/nfl/", season)))

  data.frame(t(sapply(t,c)))

}

#' @export
get_league_by_id <- function(league_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id)))
  data.frame(t(sapply(t,c)))
}

#' @export
get_league_rosters <- function(league_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/rosters")))
  data.frame(t(sapply(t,c)))
}

#' @export
get_league_users <- function(league_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/users")))
  data.frame(t(sapply(t,c)))
}

#' @export
#
## NEEDS CHECKING
get_league_matchups <- function(league_id, week) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/matchups/", week)))
  data.frame(t(sapply(t,c)))
}

#' @export
#
## NEEDS WORK
get_playoff_bracket <- function(league_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/winners_bracket")))
  data.frame(t(sapply(t,c)))
}

#' @export
get_league_transactions <- function(league_id, round) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/transactions/", round)))
  data.frame(t(sapply(t,c)))
}

#' @export
get_traded_picks <- function(league_id) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/league/", league_id, "/traded_picks")))
  data.frame(t(sapply(t,c)))
}

#' @export
get_NFL_state <- function(sport) {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/state/", tolower(sport))))
  data.frame(t(sapply(t,c)))
}




