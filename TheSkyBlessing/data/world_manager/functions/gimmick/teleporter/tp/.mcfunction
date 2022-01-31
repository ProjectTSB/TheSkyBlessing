#> world_manager:gimmick/teleporter/tp/
#
#
#
# @within function world_manager:gimmick/teleporter/active/

execute anchored eyes positioned ^ ^ ^1 positioned ~ ~-0.4 ~ run function world_manager:gimmick/teleporter/tp/find_target

execute if data storage world_manager:gimmick TargetPos as 0-0-0-0-0 run function world_manager:gimmick/teleporter/tp/move

data remove storage world_manager:gimmick TargetPos