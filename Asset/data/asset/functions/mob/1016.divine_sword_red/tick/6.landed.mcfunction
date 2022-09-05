#> asset:mob/1016.divine_sword_red/tick/6.landed
#
#
#
# @within function asset:mob/1016.divine_sword_red/tick/5.unlanded_move

# タグ付与
    tag @s add S8.Landed

# 刺さり具合の調整
    execute align y run tp @s ~ ~0.3 ~

# 演出
    playsound minecraft:item.trident.return neutral @a ~ ~ ~ 2 1.5
    playsound minecraft:entity.iron_golem.hurt neutral @a ~ ~ ~ 2 2
    particle dust 0.718 0.188 0.188 0.5 ~ ~0.8 ~ 0.1 0.1 0.1 0 50
    particle end_rod ~ ~0.8 ~ 0.1 0.1 0.1 0.1 10