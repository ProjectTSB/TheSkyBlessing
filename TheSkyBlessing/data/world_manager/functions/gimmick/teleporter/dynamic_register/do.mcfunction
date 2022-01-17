#> world_manager:gimmick/teleporter/dynamic_register/do
#
#
#
# @within function world_manager:gimmick/teleporter/dynamic_register/

# TODO dynamic_registerをapi:に移す
# Argument{Color?: Enum, Group: string}みたいなのを用意する
# 実行座標を登録するぜ

tp @s ~ ~ ~

data modify storage world_manager:gimmick TargetGroupID set from storage api: Argument.GroupID
function world_manager:gimmick/teleporter/data/get_from_id/
execute unless data storage world_manager:gimmick Teleporters run data modify storage world_manager:gimmick Teleporters set value []
data modify storage world_manager:gimmick Target.Teleporters append value {}
data modify storage world_manager:gimmick Target.Teleporters[-1].Pos set from entity @s Pos
data modify storage world_manager:gimmick Target.Teleporters[-1].Data.Activate set value true
data modify storage world_manager:gimmick Target.Teleporters[-1].Data.Color set value "White"
tp @s 0.0 0.0 0.0