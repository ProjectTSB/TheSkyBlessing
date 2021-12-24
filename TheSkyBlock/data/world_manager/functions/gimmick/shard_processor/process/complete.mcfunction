#> world_manager:gimmick/shard_processor/process/complete
#
#
#
# @within function world_manager:gimmick/shard_processor/process/

# 額縁のアイテムを消す
    data remove entity @s Item
# 神器を吐き出す
    data modify storage api: Argument.Rarity set from storage world_manager:gimmick FrameData.Item.tag.TSB.ShardRarity
    function api:sacred_treasure/spawn/from_rarity
# 一定時間素早く加工できるようにする(UXのため)
    scoreboard players set @s ShardUX 200