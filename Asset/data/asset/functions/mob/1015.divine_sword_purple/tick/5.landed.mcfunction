#> asset:mob/1015.divine_sword_purple/tick/5.landed
#
#
#
# @within function asset:mob/1015.divine_sword_purple/tick/4.unlanded_move

# タグ付与
    tag @s add S7.Landed

# 演出
    playsound minecraft:item.trident.return neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.iron_golem.hurt neutral @a ~ ~ ~ 2 2
    particle dust 1 0 1 0.5 ~ ~0.8 ~ 0.1 0.1 0.1 0 50
    particle end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10