#> asset:mob/0301.sinful_thoughts/death/gun_summon
#
#
#
# @within function asset:mob/0301.sinful_thoughts/death/**

# 召喚
    summon armor_stand ~ ~1000 ~ {Marker:1b,Invisible:1b,Tags:["8D.ArmorStandGun","8D.ArmorStandThis","Object","Uninterferable"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:20265}}]}
# TP
    tp @e[type=armor_stand,tag=8D.ArmorStandThis,limit=1] ~ ~ ~ ~ ~
# タグ消し
    tag @e[type=armor_stand,tag=8D.ArmorStandThis,limit=1] remove 8D.ArmorStandThis

# パーティクル
    particle witch ~ ~1.5 ~ 0 0 0 0 20