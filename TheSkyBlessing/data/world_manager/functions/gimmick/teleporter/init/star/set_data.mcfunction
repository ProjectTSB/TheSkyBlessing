#> world_manager:gimmick/teleporter/init/star/set_data
#
#
#
# @within function world_manager:gimmick/teleporter/init/star/summon

scoreboard players operation @s TPStarFromUserID = @p[tag=this] UserID
function oh_my_dat:please
data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].TPStarData.TargetPos set from storage world_manager:gimmick Teleporters[-1].Pos
# execute if data storage world_manager:gimmick Teleporters[-1].Data{Color:"White"}
execute if data storage world_manager:gimmick Teleporters[-1].Data{Color:"Green"} run tag @s add TPStarGreen
tag @s remove TPStarInit