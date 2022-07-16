#> asset:mob/0264.dark_summoner/tick/event/cast_start
#
#
#
# @within function asset:mob/0264.dark_summoner/tick/2.tick

# SFX
    playsound minecraft:entity.enderman.ambient hostile @a ~ ~ ~ 1.5 0.7
    playsound minecraft:entity.phantom.ambient hostile @a ~ ~ ~ 1.5 0.5
    playsound minecraft:entity.player.breath hostile @a ~ ~ ~ 1 1.2
    playsound minecraft:block.beacon.ambient hostile @a ~ ~ ~ 4 1.5
    particle minecraft:witch ~ ~1 ~ 0.2 0.5 0.2 1 50

# タグ付与
    tag @s add 7C.CastStart

# ポーズ変更
    item replace entity @s armor.head with stick{CustomModelData:20215}