#> asset_manager:sacred_treasures/_index.d
# @private

#> storage
# @within *
#   asset_manager:sacred_treasures/**
#   asset:sacred_treasure/*/_.give
#   asset:sacred_treasure/lib/**
    #declare storage asset:sacred_treasure

#> LootTableに渡す用のscoreHolder
# @within
#   function
#       asset_manager:sacred_treasures/core/set_data
#       asset_manager:sacred_treasures/core/remaining_decrement
#   loot_table
#       asset_manager:sacred_treasures/core/get_name/has_remain
    #declare score_holder #Remain
    #declare score_holder #RemainMAX