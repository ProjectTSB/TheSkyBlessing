#> asset_manager:common/datapack/enable.m
#
#
#
# @input args
#   Datapack : string
#   Suffix : string
# @within function asset:datapack/enable

datapack enable "file/$(Datapack)$(Suffix)"
