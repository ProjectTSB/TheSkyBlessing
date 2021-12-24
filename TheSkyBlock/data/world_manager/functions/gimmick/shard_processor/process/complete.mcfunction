#> world_manager:gimmick/shard_processor/process/complete
#
#
#
# @within function world_manager:gimmick/shard_processor/process/

# 額縁のアイテムを消す
    data modify entity @s ItemRotation set value 0b
    item replace entity @s container.0 with air
# 神器を吐き出す
    execute store result storage api: Argument.Rarity int 1 run data get storage world_manager:gimmick FrameData.Item.tag.TSB.ShardRarity
    execute positioned -33.8 21.5 -13.5 run function api:sacred_treasure/spawn/from_rarity