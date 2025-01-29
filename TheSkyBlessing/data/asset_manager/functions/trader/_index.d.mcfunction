#> asset_manager:trader/_index.d
# @private

#> InitTag
# @within asset_manager:trader/**
    #declare tag TraderInit

#> tag
# @within
#   asset_manager:trader/**
#   asset:trader/*/register/
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
