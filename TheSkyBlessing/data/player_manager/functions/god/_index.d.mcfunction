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
# @within function player_manager:god/mercy/**
    #declare storage player_manager:god

#> Tag for Equipment Update
# @within function
#   player_manager:god/change_believe/change_process/believe2
#   player_manager:god/change_believe/change_process/unbelieve2
#   player_manager:god/none/set_tag
#   asset_manager:artifact/triggers/
#   asset_manager:artifact/triggers/*equip
#   asset_manager:artifact/triggers/equipments/set_and_modifier/*
    #declare tag Believe.Changed
