#> world_manager:gimmick/teleporter/vfx/star
#
#
#
# @within function world_manager:gimmick/teleporter/active/

execute if entity @s[tag=TPStarGreen] run particle composter ~ ~ ~ 0 0 0 0 1
execute if entity @s[tag=!TPStarGreen] run particle electric_spark