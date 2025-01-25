#> asset:container/2147483647/register
# @within function asset:container/example/register

execute unless loaded 16 4 0 run return 1

# ID (int)
    data modify storage asset:container ID set value 2147483647
# Pos ([int] @ 3)
    data modify storage asset:container Pos set value [16,4,0]
# ブロック (id(minecraft:block))
    data modify storage asset:container Block set value "chest[facing=east,waterlogged=true]"

# 以下はどちらかしか設定できない
# ルートテーブル (id(minecraft:loot_table)) (オプション)
    # data modify storage asset:container LootTable set value "common:island_rewards/lv-1"
# アイテム ([id(minecraft:loot_table)] オプション)
    data modify storage asset:container Items set value [{Slot:0b,Item:{PresetItem:"currency/",Count:1b}},{Slot:1b,Item:{PresetItem:"currency/high",Count:1b}},{Slot:2b,Item:{PresetItem:"sacred_shard/lv-1",Count:1b}},{Slot:3b,Item:{PresetItem:"sacred_shard/lv-2",Count:1b}},{Slot:4b,Item:{PresetItem:"sacred_shard/lv-3",Count:1b}},{Slot:5b,Item:{PresetItem:"sacred_shard/lv-4",Count:1b}},{Slot:6b,Item:1},{Slot:7b,Item:{id:"stick",Count:1b,tag:{Enchantments:[{id:"minecraft:sharpness",lvl:10s}]}}}]
