#> asset:mob/1016.divine_sword_red/summon/3.init
#
#
#
# @within function asset:mob/1016.divine_sword_red/summon/2.summon

# プレイヤーのほう向く
    execute facing entity @p[distance=..20] feet run tp @s ~ ~ ~ ~ ~

# 演出
    particle explosion ~ ~1 ~ 0 0 0 0 1
    playsound minecraft:entity.enderman.teleport neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.zombie_villager.converted neutral @a ~ ~ ~ 2 2