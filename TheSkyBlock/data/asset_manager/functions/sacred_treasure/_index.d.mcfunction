#> asset_manager:sacred_treasure/_index.d
# @private

#> storage
# @within *
#   asset_manager:sacred_treasure/**
#   asset:sacred_treasure/*/_.give
#   asset:sacred_treasure/lib/**
    #declare storage asset:sacred_treasure

#> LootTableに渡す用のscoreHolder
# @within
#   function
#       asset_manager:sacred_treasure/core/create/set_data
#       asset_manager:sacred_treasure/core/use/remove_remain/*
#   loot_table
#       asset_manager:sacred_treasure/core/get_name/has_remain
    #declare score_holder $Remain
    #declare score_holder $RemainMAX