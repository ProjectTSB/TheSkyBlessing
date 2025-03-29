#> asset_manager:common/datapack/disable.m
#
#
#
# @input args
#   Datapack : string
#   Suffix : string
# @within function asset:datapack/disable

datapack disable "file/$(Datapack)$(Suffix)"
