#> asset_manager:teleporter/tick/vfx/teleport/from
#
#
#
# @within function asset_manager:teleporter/tick/active

playsound entity.enderman.teleport player @a ~ ~ ~
particle reverse_portal ~ ~1 ~ 0 0 0 1 150 force @a[distance=..15]