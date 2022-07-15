
#' @export
#
## NEEDS WORK
get_all_players <- function() {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/players/nfl")))
  saveRDS(t, file = "player_list.RDS")

  a <- as.data.frame(do.call(rbind, t))
}

#' @export
get_trending_players <- function() {
  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/players/nfl/trending/add?lookback_hours=24&limit=25")))
  adds <- data.frame(t(sapply(t,c)))

  t <- httr::content(httr::GET(paste0("https://api.sleeper.app/v1/players/nfl/trending/drop?lookback_hours=24&limit=25")))
  drops <- data.frame(t(sapply(t,c)))

  return(list(adds, drops))
}
