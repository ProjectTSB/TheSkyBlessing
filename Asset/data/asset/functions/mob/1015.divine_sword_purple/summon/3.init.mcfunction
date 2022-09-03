#> asset:mob/1015.divine_sword_purple/summon/3.init
#
#
#
# @within function asset:mob/1015.divine_sword_purple/summon/2.summon

# 持ち主のほう向く
    execute facing entity @e[type=wither_skeleton,scores={MobID=1004},sort=nearest,limit=1] feet run tp @s ~ ~ ~ ~ ~

# 演出
    particle explosion ~ ~1 ~ 0 0 0 0 1
    playsound minecraft:item.trident.throw neutral @a ~ ~ ~ 3 0.5
    playsound minecraft:entity.witch.throw neutral @a ~ ~ ~ 3 0.5