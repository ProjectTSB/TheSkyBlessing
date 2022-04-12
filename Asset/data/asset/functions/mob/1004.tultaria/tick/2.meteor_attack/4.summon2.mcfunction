#> asset:mob/1004.tultaria/tick/2.meteor_attack/4.summon2
#
#
#
# @within function asset:mob/1004.tultaria/tick/2.meteor_attack/2.first_tick

# モブを出す
    data modify storage api: Argument.ID set value 1012
    execute positioned ~ ~8 ~ run function api:mob/summon

# 演出
    execute positioned ~ ~0.1 ~ run function asset:mob/1004.tultaria/tick/2.meteor_attack/particle2

# キル
    kill @s