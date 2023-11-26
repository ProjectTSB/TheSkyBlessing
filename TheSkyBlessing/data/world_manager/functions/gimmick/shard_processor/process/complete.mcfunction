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
    execute positioned -33.8 21.6 -13.8 run function api:artifact/spawn/from_rarity

# アマスタのモデルをリセットしてFixedを消す
    execute positioned ^ ^ ^-0.5 run item replace entity @e[type=armor_stand,sort=nearest,limit=1] armor.head with stick{CustomModelData:20113}
    data modify entity @s Fixed set value 0b

# VFX
    playsound minecraft:entity.chicken.egg block @a ~ ~ ~ 2 1
    playsound minecraft:block.note_block.bell block @a ~ ~ ~ 1.5 1
    particle dust 0.455 0.553 1 1 ~ ~-0.1 ~-0.3 0.25 0.25 0.25 0 10
    particle dust 0.871 0.545 1 1 ~ ~-0.1 ~-0.3 0.25 0.25 0.25 0 10
    particle item stick{CustomModelData:20093} ~ ~-0.1 ~-0.3 0 0 0 0.1 10