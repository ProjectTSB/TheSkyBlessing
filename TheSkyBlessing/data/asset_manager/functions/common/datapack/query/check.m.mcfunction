#> asset_manager:common/datapack/query/check.m
# @input args
#   Datapack: string
# @within function asset_manager:common/datapack/query/

$return run execute if data storage asset:datapack DatapackState{"$(Datapack)":true}
