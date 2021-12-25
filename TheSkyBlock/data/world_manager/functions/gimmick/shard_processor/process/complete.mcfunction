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
# VFX
    playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 2 1
    playsound minecraft:entity.experience_orb.pickup block @a ~ ~ ~ 2 1.5
    particle dust 0.455 0.553 1 1 ~ ~ ~ 0.25 0.25 0.25 0 10
    particle dust 0.871 0.545 1 1 ~ ~ ~ 0.25 0.25 0.25 0 10
    particle item stick{CustomModelData:20093} ~ ~ ~ 0 0 0 0.1 10