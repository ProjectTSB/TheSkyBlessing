#> world_manager:gimmick/teleporter/tp/find_target
#
#
#
# @within function
#   world_manager:gimmick/teleporter/tp/
#   world_manager:gimmick/teleporter/tp/find_target

execute as @e[type=marker,tag=TPStar,distance=..0.1,limit=1] run function oh_my_dat:please
execute if entity @e[type=marker,tag=TPStar,distance=..0.1,limit=1] run data modify storage world_manager:gimmick TargetPos set from storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos

execute unless data storage world_manager:gimmick TargetPos positioned ^ ^ ^0.05 if entity @s[distance=..2.5] run function world_manager:gimmick/teleporter/tp/find_target