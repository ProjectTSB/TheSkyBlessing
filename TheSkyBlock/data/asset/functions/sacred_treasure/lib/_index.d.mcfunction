#> asset:sacred_treasure/lib/_index.d
# @private

#> ReturnTag
# @within function
#   asset:sacred_treasure/*/2.check_condition
#   asset_manager:sacred_treasure/check/
#   asset:sacred_treasure/lib/use/*
    #declare tag CanUsed

#> 処理用一時storage
# @within * asset:**
    #declare storage asset:temp