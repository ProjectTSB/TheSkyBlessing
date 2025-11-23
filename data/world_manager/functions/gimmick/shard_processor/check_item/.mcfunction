#> world_manager:gimmick/shard_processor/check_item/
#
#
#
# @within function world_manager:gimmick/shard_processor/

execute if data storage world_manager:gimmick FrameData.Item unless data storage world_manager:gimmick FrameData.Item.tag.TSB{Shard:1b} run function world_manager:gimmick/shard_processor/check_item/invalid
execute if data storage world_manager:gimmick FrameData.Item.tag.TSB{Shard:1b} run function world_manager:gimmick/shard_processor/process/