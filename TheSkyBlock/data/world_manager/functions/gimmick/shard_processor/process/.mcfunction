#> world_manager:gimmick/shard_processor/process/
#
# ガチャの処理
#
# @within function world_manager:gimmick/shard_processor/check_item/

execute if score @s ShardUX matches 1.. if data storage world_manager:gimmick FrameData{ItemRotation:1b} run function world_manager:gimmick/shard_processor/process/complete
execute unless score @s ShardUX matches 1.. if data storage world_manager:gimmick FrameData{ItemRotation:6b} run function world_manager:gimmick/shard_processor/process/complete
