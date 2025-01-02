#> player_manager:god/_index.d
# @private

#> Tags
# @within
#   function player_manager:god/**
#   function player_manager:set_team_and_per_health
#   function debug:change_believe/*
#   predicate player_manager:is_believe/*
    #declare tag Believe.None
    #declare tag Believe.Flora
    #declare tag Believe.Urban
    #declare tag Believe.Nyaptov
    #declare tag Believe.Wi-ki
    #declare tag Believe.Rumor

#> storage for process
# @within function
#   player_manager:god/mercy/**
#   player_manager:god/change_difficulty/**
    #declare storage player_manager:god

#> Tag for Difficulty Change
# @within function
#   player_manager:god/change_difficulty/request/**
#   player_manager:god/change_difficulty/confirm/**
    #declare tag Difficulty.Request
