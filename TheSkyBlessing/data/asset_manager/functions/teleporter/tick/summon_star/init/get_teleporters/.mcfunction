#> asset_manager:teleporter/tick/summon_star/init/get_teleporters/
#
#
#
# @within function
#   asset_manager:teleporter/tick/summon_star/init/
#   asset_manager:teleporter/tick/summon_star/init/get_teleporters/

# データ処理
    data modify storage asset:teleporter Args.TargetGroupID set from storage asset:teleporter TargetGroupIDs[-1]
    function asset_manager:teleporter/tick/summon_star/init/get_teleporters/from_group_id.m with storage asset:teleporter Args
# 末尾削除
    data remove storage asset:teleporter TargetGroupIDs[-1]
# 要素があれば再帰
    execute if data storage asset:teleporter TargetGroupIDs[0] run function asset_manager:teleporter/tick/summon_star/init/get_teleporters/
