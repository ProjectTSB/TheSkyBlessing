#> world_manager:gimmick/teleporter/active/init/star/set_data
#
#
#
# @within function world_manager:gimmick/teleporter/active/init/star/foreach

execute store result score @s TPStarFromUserID run data get storage world_manager:gimmick Targets[-1].ID
execute if data storage world_manager:gimmick Targets[-1].Data{Color:"Yellow"} run tag @s add TPStarYellow