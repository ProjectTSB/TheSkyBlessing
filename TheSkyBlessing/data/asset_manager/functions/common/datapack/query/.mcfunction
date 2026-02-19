#> asset_manager:common/datapack/query/
# @input storage asset:datapack
#   Datapack: string
# @output result datapack is loaded
# @within asset:datapack/query

return run function asset_manager:common/datapack/query/check.m with storage asset:datapack {}
