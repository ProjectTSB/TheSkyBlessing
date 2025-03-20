#> asset_manager:trader/_index.d
# @private

#> InitTag
# @within asset_manager:trader/**
    #declare tag TraderInit

#> tag
# @within
#   asset_manager:trader/**
#   asset:trader/*/register/
#   core:tick/4_interval
#   debug:trader/update
    #declare tag Trader

#> storage
# @within
#   asset_manager:trader/**
#   asset:trader/*/register
    #declare storage asset:trader

#> number of give
# @within
#   asset_manager:trader/resolve_artifact/**
    #declare score_holder $N

#> trader versioning
# @within function
#   asset_manager:trader/tick/4_interval
#   asset_manager:trader/common/update_recipe
#   asset_manager:island/dispel/successful
#   core:load_once
    #declare score_holder $TraderRecipeVersion

#> update
# @within *
#   asset_manager:trader/common/update_recipe
#   asset_manager:trader/common/trades_map/**
    #declare score_holder $Current
    #declare score_holder $Required
