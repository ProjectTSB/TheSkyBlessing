#> asset:mob/0022.red_knight/tick/skill_slash/3.skill_slash_teleport
#
#
#
# @within function asset:mob/0022.red_knight/tick/skill_slash/1.skill_slash

# アマスタにタグを付与
    tag @e[type=armor_stand,tag=M.ArmorStand,distance=..0.01,sort=nearest,limit=1] add M.ArmorStandThis
# 前進
    tp ^ ^ ^8
# アマスタを持ってきてタグを消す
    tp @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] @s
    tag @e[type=armor_stand,tag=M.ArmorStandThis,sort=nearest,limit=1] remove M.ArmorStandThis

# 斬撃演出
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_1
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_2
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_3
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_4
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2