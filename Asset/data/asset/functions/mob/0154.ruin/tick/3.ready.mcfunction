#> asset:mob/0154.ruin/tick/3.ready
#
#
#
# @within function asset:mob/0154.ruin/tick/2.tick

# 装備変更
    item replace entity @s weapon.mainhand with stick{CustomModelData:20065}

# タグを付与
    tag @s add 4A.Madness

# 演出
    particle dragon_breath ~ ~1 ~ 0.4 0.4 0.4 0.1 100
    particle dust 0.255 0.039 0.039 1 ~ ~1 ~ 0.3 0.3 0.3 1 100
    playsound minecraft:entity.zombie_villager.cure hostile @a ~ ~ ~ 1 1