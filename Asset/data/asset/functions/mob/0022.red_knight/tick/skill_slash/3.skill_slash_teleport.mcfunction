#> asset:mob/0022.red_knight/tick/skill_slash/3.skill_slash_teleport
#
#
#
# @within function asset:mob/0022.red_knight/tick/skill_slash/1.skill_slash

# テレポート
    execute positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/move/teleport

# 斬撃演出
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_1
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_2
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_3
    execute positioned ~ ~1 ~ positioned ^ ^ ^4 run function asset:mob/0022.red_knight/tick/particle_4
    playsound minecraft:item.trident.return hostile @a ~ ~ ~ 1 2