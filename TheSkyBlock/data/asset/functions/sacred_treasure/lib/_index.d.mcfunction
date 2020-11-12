#> asset:sacred_treasure/lib/_index.d
# @private

#> storage
# @within function
#   asset_manager:sacred_treasures/core/set_id
#   asset:sacred_treasure/*/*
    #declare storage asset:id

#> ReturnTag
# @within function
#   asset:sacred_treasure/*/2.check_condition
#   asset_manager:sacred_treasures/core/use/check
#   asset:sacred_treasure/lib/use/*
    #declare tag CanUsed