#> world_manager:gimmick/shard_processor/check_item/
#
#
#
# @within function world_manager:gimmick/shard_processor/

scoreboard players remove @s ShardUX 1
execute unless data storage world_manager:gimmick FrameData.Item{id:"minecraft:stick",tag:{TSB:{Shard:1b}}} run function world_manager:gimmick/shard_processor/check_item/invalid
execute if data storage world_manager:gimmick FrameData.Item{id:"minecraft:stick",tag:{TSB:{Shard:1b}}} run function world_manager:gimmick/shard_processor/process/